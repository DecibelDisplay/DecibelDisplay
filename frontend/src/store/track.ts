import { VuexModule, Module, Mutation, Action } from 'vuex-module-decorators'
import store from "./index";
import * as albumArt from "album-art";

export interface DBusTrack {
  Title: string;
  Album: string;
  TrackNumber: number;
  Artist: string;
  NumberOfTracks: number;
  Duration: number;
}

export interface Track<T = string> {
  title: string;
  album: string;
  artist: string;
  duration: number;
  albumArt: T;
}

const defaultTrack: Track = {title: "Nothing", album: "Nowhere", artist: "Nobody", duration: 0, albumArt: "/no_cover.jpg"};

const convertDBusTrack = (t: DBusTrack): Track<null> => ({title: t.Title, album: t.Album, artist: t.Artist, duration: t.Duration, albumArt: null});

@Module({name: "Track", dynamic: true, store})
export default class TrackModule extends VuexModule {
  history: Track[] = [] // initialize empty for now
  nextToPlay: Track | null = null;

  get previousTrack(): Track {
    if (this.history.length > 1) return this.history[this.history.length - 2];
    return defaultTrack;
  }

  get currentTrack(): Track {
    if (this.history.length > 0) return this.history[this.history.length - 1];
    return defaultTrack;
  }

  get nextTrack(): Track {
    if (this.nextToPlay) return this.nextToPlay;
    return defaultTrack;
  }

  @Mutation
  private addTrack(track: Track) {
    this.history.push(track);
  }

  @Mutation
  private setNextTrack(track: Track) {
    this.nextToPlay = track;
  }

  @Action
  async addNewTrack(dtrack: DBusTrack) {
    const nTrack = convertDBusTrack(dtrack);
    const cover: string = await albumArt(nTrack.artist, {album: nTrack.album, size: "large"});
    console.log(cover, /ART/);
    const track: Track = {...nTrack, albumArt: cover};
    this.addTrack(track);
  }
}
