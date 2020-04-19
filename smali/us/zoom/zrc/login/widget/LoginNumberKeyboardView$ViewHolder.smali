.class Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LoginNumberKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private iconView:Landroid/widget/ImageView;

.field private nameView:Landroid/widget/TextView;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    .line 135
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 136
    sget p1, Lus/zoom/zrcbox/R$id;->tv_label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->textView:Landroid/widget/TextView;

    .line 137
    sget p1, Lus/zoom/zrcbox/R$id;->iv_delete:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 138
    sget p1, Lus/zoom/zrcbox/R$id;->tv_sub_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->nameView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 128
    iget-object p0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->iconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 128
    iget-object p0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 128
    iget-object p0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->nameView:Landroid/widget/TextView;

    return-object p0
.end method
