export default function() {
  this.route('discovery', { path: '/', resetNamespace: true }, function() {
    this.route('rules', {path: '/rules'});
  });
};
