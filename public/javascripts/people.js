var Actions = {
	connectAddForm: function() {
		$("form.people").submit(function() {
			$.ajax({
				type: 'post',
				dataType: 'json',
				url: '/people',
				data: $('form.people').serialize(), 
				success: function(json) {
					$('ul.people').append('<li><span class="name">' + json.person.name + '</span> <a href="/people/' + json.person.id + '" class="delete">delete</a></li>');
					Actions.connectDeleteLinks();
					$('#person_name').val('');
				}
			});
			return false;
		});
	},
	connectDeleteLinks: function() {
		$("ul.people").find("a.delete").each(function(index) {
			var li = $(this).parent();
			$(this).click(function() {
				if (confirm('Are you sure you want to delete the person "' + li.find('span.name').text() + '"?')) {
					$.ajax({
						type: 'post',
						dataType: 'json',
						url: this.href.replace(/\/delete/, ''),
						data: {'_method': 'delete'},
						success: function(json) {
							li.slideToggle();
						}
					});
				}
				return false;
			});
		});
	}
}

$(document).ready(function(){
	Actions.connectAddForm();
	Actions.connectDeleteLinks();
});