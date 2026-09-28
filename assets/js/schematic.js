// Shows the tip of the hovered, tapped or focused schematic step in the caption below it.
document.querySelectorAll(".schematic-figure").forEach((figure) => {
  const tip = figure.querySelector(".schematic-tip");
  const nodes = figure.querySelectorAll(".schematic-node[data-tip]");
  const show = (node) => {
    nodes.forEach((n) => n.classList.toggle("active", n === node));
    tip.textContent = node.dataset.tip;
  };
  nodes.forEach((node) => {
    ["mouseenter", "focus", "click"].forEach((type) => node.addEventListener(type, () => show(node)));
  });
});
