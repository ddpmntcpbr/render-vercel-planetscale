import type { NextPage } from 'next'
import useSWR from 'swr'
import { fetcher } from '@/utils'

type PostProps = {
  title: string
  content: string
}

const Index: NextPage = () => {
  const url = 'http://localhost:3000/api/v1/posts'
  const { data, error } = useSWR(url, fetcher)

  if (error) return <div>An error has occurred.</div>
  if (!data) return <div>Loading...</div>

  const posts = data

  return (
    <>
      <div>postsレコード</div>
      <ul>
        {posts.map((post: PostProps, i: number) => (
          <li key={i}>
            {post.title} {post.content}
          </li>
        ))}
      </ul>
    </>
  )
}

export default Index
