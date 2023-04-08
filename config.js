module.exports = {
  pdf_options: {
    displayHeaderFooter: true,
    headerTemplate: `
      <style>
        div { font-size: 11px; width: 100%; text-align: center; }
      </style>
    `,
    footerTemplate: `<div><span class="pageNumber"></span></div>`,
  },
};
