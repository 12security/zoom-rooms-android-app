.class public Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LoginLocationPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private centerTextView:Landroid/widget/TextView;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

.field private treeTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;Landroid/view/View;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->this$0:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    .line 136
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 137
    sget p1, Lus/zoom/zrcbox/R$id;->location_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 138
    sget p1, Lus/zoom/zrcbox/R$id;->location_center_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->centerTextView:Landroid/widget/TextView;

    .line 139
    sget p1, Lus/zoom/zrcbox/R$id;->location_tree_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->treeTitleView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 130
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 130
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->treeTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 130
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->centerTextView:Landroid/widget/TextView;

    return-object p0
.end method
