import { VuexModule, Module, Mutation, Action } from 'vuex-module-decorators'
// import { get } from 'axios'

interface PostEntity {
  comments: string[]
}

@Module
export default class Posts extends VuexModule {
  posts: PostEntity[] = [] // initialize empty for now

  get totalComments(): number {
    return this.posts
      .filter(post => {
        // Take those posts that have comments
        return post.comments && post.comments.length
      })
      .reduce((sum, post) => {
        // Sum all the lengths of comments arrays
        return sum + post.comments.length
      }, 0)
  }

  @Mutation
  updatePosts(posts: PostEntity[]) {
    this.posts = posts
  }

//   @Action({ commit: 'updatePosts' })
//   async fetchPosts() {
//     return get('https://jsonplaceholder.typicode.com/posts')
//   }
}
