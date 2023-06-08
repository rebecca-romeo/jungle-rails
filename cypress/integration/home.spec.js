
describe('Homepage for Jungle App', () => {
  beforeEach(() => {
    cy.visit('localhost:3000')
  });
  it('should have the right title', () => {
    cy.title().should('include', 'Jungle')
  });
  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  it("There is 12 products on the page", () => {
    cy.get(".products article").should("have.length", 12);
  });
})