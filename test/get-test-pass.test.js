const test = require('tap').test;
const request = require('supertest');
const app = require('../lib/app');

test('GET /test-pass returns a 200 OK', t => {
  request(app)
    .get('/test-pass')
    .expect(200, t.end);
});
