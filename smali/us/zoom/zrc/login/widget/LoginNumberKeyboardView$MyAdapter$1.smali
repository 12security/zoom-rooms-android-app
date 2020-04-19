.class Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter$1;
.super Ljava/lang/Object;
.source "LoginNumberKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->setupNormalPress(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;

.field final synthetic val$holder:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter$1;->this$1:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;

    iput-object p2, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter$1;->val$holder:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 230
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter$1;->val$holder:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;

    iget-object p1, p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 231
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter$1;->val$holder:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;

    iget-object p1, p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 234
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter$1;->val$holder:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$500(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPressed(Z)V

    .line 235
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter$1;->val$holder:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$400(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 239
    :cond_1
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter$1;->val$holder:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$500(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 240
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter$1;->val$holder:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$400(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setPressed(Z)V

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
