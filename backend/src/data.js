import { faker } from "@faker-js/faker";

const posts = [];

for (let i = 0; i < 100; i++) {
  posts.push({
    id: faker.string.uuid(),
    title: faker.lorem.sentence(),
    body: faker.lorem.paragraphs(),
    date: faker.date.recent(),
  });
}
export default posts;
