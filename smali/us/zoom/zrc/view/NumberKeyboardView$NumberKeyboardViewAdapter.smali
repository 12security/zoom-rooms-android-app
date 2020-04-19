.class public Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "NumberKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/NumberKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NumberKeyboardViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/NumberKeyboardView;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/view/NumberKeyboardView;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;->this$0:Lus/zoom/zrc/view/NumberKeyboardView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 198
    iget-object p2, p0, Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;->this$0:Lus/zoom/zrc/view/NumberKeyboardView;

    invoke-virtual {p2}, Lus/zoom/zrc/view/NumberKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 199
    sget v0, Lus/zoom/zrcbox/R$layout;->number_keyboard_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 201
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 202
    sget p3, Lus/zoom/zrcbox/R$id;->tv_content:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 204
    iget-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;->this$0:Lus/zoom/zrc/view/NumberKeyboardView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/NumberKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->delete:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    invoke-static {p2}, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->handle(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    const-string p1, "0"

    .line 207
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 209
    sget p1, Lus/zoom/zrcbox/R$string;->join_meeting:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;->this$0:Lus/zoom/zrc/view/NumberKeyboardView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/NumberKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$dimen;->zrc_number_keyboard_join_font_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;->this$0:Lus/zoom/zrc/view/NumberKeyboardView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/NumberKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    .line 211
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 213
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;->this$0:Lus/zoom/zrc/view/NumberKeyboardView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;->this$0:Lus/zoom/zrc/view/NumberKeyboardView;

    invoke-static {p1, p2}, Lus/zoom/zrc/view/NumberKeyboardView;->access$000(Lus/zoom/zrc/view/NumberKeyboardView;Landroid/view/View;)V

    return-object p2
.end method
