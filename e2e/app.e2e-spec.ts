import { RegexPage } from './app.po';

describe('regex App', () => {
  let page: RegexPage;

  beforeEach(() => {
    page = new RegexPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
