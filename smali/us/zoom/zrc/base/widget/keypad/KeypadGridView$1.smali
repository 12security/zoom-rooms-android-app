.class Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;
.super Landroid/widget/BaseAdapter;
.source "KeypadGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/widget/keypad/KeypadGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->access$000(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .line 49
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;->getCount()I

    move-result v0

    if-le p1, v0, :cond_0

    const-string v1, "BasicKeypadView"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BasicKeypadView:getItem() called with: position = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], count = ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->access$000(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder"
        }
    .end annotation

    .line 65
    iget-object p2, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-virtual {p2}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 66
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-static {v1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->access$100(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;)I

    move-result v1

    invoke-direct {v0, p2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 67
    sget v0, Lus/zoom/zrcbox/R$layout;->basic_keypad_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/base/widget/keypad/DialItem;

    if-nez p3, :cond_0

    return-object p2

    .line 74
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->tv_number_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    sget v2, Lus/zoom/zrcbox/R$id;->tv_letters:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    sget v3, Lus/zoom/zrcbox/R$id;->iv_icon:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 78
    iget v4, p3, Lus/zoom/zrc/base/widget/keypad/DialItem;->drawableId:I

    const/16 v5, 0x8

    if-nez v4, :cond_2

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v4, p3, Lus/zoom/zrc/base/widget/keypad/DialItem;->number:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p3, Lus/zoom/zrc/base/widget/keypad/DialItem;->letter:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object p3, p3, Lus/zoom/zrc/base/widget/keypad/DialItem;->letter:Ljava/lang/String;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p3, 0x0

    .line 88
    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget v0, p3, Lus/zoom/zrc/base/widget/keypad/DialItem;->drawableId:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object p3, p3, Lus/zoom/zrc/base/widget/keypad/DialItem;->contentDescription:Ljava/lang/String;

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    :goto_1
    iget-object p3, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-static {p3, p2, p1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->access$200(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;Landroid/view/View;I)V

    return-object p2
.end method
