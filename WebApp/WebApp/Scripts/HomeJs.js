var HomeJs = function () {
    return {
        Init: function ()
        {
            $(document).ready(function () {
                $.getJSON("api/Values")
                    .done(function (data) {
                        // On success, 'data' contains a list of products.
                        alert(data);
                    });

            });
        },
        formatItem:function(item) {
        return item.Name + ': $' + item.Price;
    }
    }
}();



