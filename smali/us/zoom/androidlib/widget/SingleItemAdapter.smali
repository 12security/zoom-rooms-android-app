.class Lus/zoom/androidlib/widget/SingleItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ZMAlertDialog.java"


# instance fields
.field private context:Landroid/content/Context;

.field items:[Ljava/lang/CharSequence;

.field private selectedIndex:I


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 1

    .line 780
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 777
    iput v0, p0, Lus/zoom/androidlib/widget/SingleItemAdapter;->selectedIndex:I

    .line 781
    iput-object p1, p0, Lus/zoom/androidlib/widget/SingleItemAdapter;->items:[Ljava/lang/CharSequence;

    .line 782
    iput-object p2, p0, Lus/zoom/androidlib/widget/SingleItemAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 787
    iget-object v0, p0, Lus/zoom/androidlib/widget/SingleItemAdapter;->items:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 792
    iget-object v0, p0, Lus/zoom/androidlib/widget/SingleItemAdapter;->items:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 805
    iget-object p2, p0, Lus/zoom/androidlib/widget/SingleItemAdapter;->context:Landroid/content/Context;

    sget p3, Lus/zoom/androidlib/R$layout;->zm_singlechoiceitem:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 807
    :cond_0
    sget p3, Lus/zoom/androidlib/R$id;->name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 808
    iget-object v0, p0, Lus/zoom/androidlib/widget/SingleItemAdapter;->items:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    sget p3, Lus/zoom/androidlib/R$id;->checkbutton:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 810
    iget v0, p0, Lus/zoom/androidlib/widget/SingleItemAdapter;->selectedIndex:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    .line 811
    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 813
    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-object p2
.end method

.method public setIndex(I)V
    .locals 0

    .line 795
    iput p1, p0, Lus/zoom/androidlib/widget/SingleItemAdapter;->selectedIndex:I

    return-void
.end method
