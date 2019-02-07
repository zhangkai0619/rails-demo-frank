# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Don't change this line
# Make idempotent
Post.destroy_all
User.destroy_all
Comment.destroy_all

# Don't change this line
# Create user and post
user = User.create(name: 'Proctor')
post = user.posts.create(
  title: 'Demo Project Tasks',
  content: '''
  <div id="instructions">
    <ol>
      <li>
        <h3>
          <div>Create sample data</div>
          <div>创建测试数据</div>
        </h3>
        <ul>
          <li>
            <div>Write a rake task to create 1,000 random users</div>
            <div class="zh">用 rake task 创建 1,000 个随机用户</div>
            <small>Load sample user names from <code>config/users.yml</code></small>
            <small class="zh">从 <code>config/users.yml</code> 文件中读取用户名</small>
          </li>
          <li>
            <div>Write a script create 10,000 comments for this post</div>
            <div class="zh">用 rake task 给这个帖子创建 10,000 个随机评论</div>
            <small>Load sample comment content from <code>config/comments.json</code></small>
            <small class="zh">从 <code>config/comments.json</code> 文件中读取评论内容</small>
          </li>
        </ul>
      </li>
      <li>
        <h3>
          <div>Display comments for this post</div>
          <div>显示用户评论</div>
        </h3>
        <ol>
          <li>
            <div>Display each comment\'s <code>user.name</code>, <code>comment.content</code> and <code>comment.created_at</code></div>
            <div class="zh">显示每个评论的 <code>user.name</code>, <code>comment.content</code> and <code>comment.created_at</code> 信息</div>
          </li>
          <li>
            <div>Add styling to match the looks of comments in our example video <i>(see full screen)</i></div>
            <div class="zh">给评论添加 CSS 样式，参照视频（可全屏查看）</div>
          </li>
          <li>
            <div>Add Ajax endless scrolling and loading (infinite scrolling)</div>
            <div class="zh">用 Ajax 实现无限下拉</div>
            <ul>
              <li>
                <div>Scrolling to the bottom of the page should trigger additional comments to load</div>
                <div class="zh">下拉到页面底部时，能够自动读取更多的评论</div>
              </li>
              <li>
                <div>You can assume no additional comments will be inserted or deleted during pagination</div>
                <div class="zh">可以忽略数据变化导致评论读取重复或遗漏的问题</div>
              </li>
              <li>
                <div>However, implementations that correctly handle comment additions and deletion during pagination will receive extra points</div>
                <div class="zh">如果你能把翻页过程中论数据变化带来的数据重复或遗漏问题解决，可以获得额外的分数</div>
              </li>
            </ul>
          </li>
          <li>
            <div>Show a loading indicator during the Ajax call</div>
            <div class="zh">Ajax 访问时显示 loading 状态</div>
          </li>
          <li>
            <div>Add pagination for the comments (pagesize = 100)</div>
            <div class="zh">给评论添加分页，每页设置 100 条记录</div>
            <ul>
              <li>
                <div>Use HTML5 API to update the Browser\'s url with the page number</div>
                <div class="zh">无限下拉时，用 HTML API 改变 url 把正确的页码更新到地址栏</div>
                <small><code>e.g: http://localhost:3000/posts/123/comments/p3</code></small>
                <small class="zh"><code>例如：http://localhost:3000/posts/123/comments/p3</code></small>
              </li>
            </ul>
          </li>
        </ol>
      </li>
      <li>
        <h3>
          <div>Evaluation criteria</div>
          <div>评判标准</div>
        </h3>
        <ol>
          <li>
            <div>Functionality and satisfying requirements</div>
            <div class="zh">准确地完成功能</div>
          </li>
          <li>
            <div>Code cleanliness and organization</div>
            <div class="zh">合理清晰的组织、编写代码</div>
          </li>
          <li>
            <div>Practical efficiency and running time</div>
            <div class="zh">良好的运行性能</div>
          </li>
        </ol>
      </li>
    </ol>
    <video width="480" controls autoplay>
      <source src="/demo.mov" type="video/mp4"/>
    </video>
  </div>
  '''
)

# Don't change this line
# Your code should work even if the post id changes
post.update_columns(id: Random.new(123214243).rand(1000000000))
