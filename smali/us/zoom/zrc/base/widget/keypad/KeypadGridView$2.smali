.class Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;
.super Ljava/lang/Object;
.source "KeypadGridView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setupKeyPress(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

.field final synthetic val$convertView:Landroid/view/View;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;Landroid/view/View;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    iput-object p2, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->val$convertView:Landroid/view/View;

    iput p3, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 144
    iget-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->val$convertView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 148
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 150
    :pswitch_0
    iget-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    iget-object p2, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->val$convertView:Landroid/view/View;

    invoke-static {p1, p2, v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->access$300(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;Landroid/view/View;Z)V

    goto :goto_1

    .line 154
    :cond_1
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->access$400(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;)Landroid/widget/BaseAdapter;

    move-result-object p1

    iget v1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->val$position:I

    invoke-virtual {p1, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    .line 155
    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/keypad/DialItem;->longClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x190

    cmp-long p2, v1, v3

    if-ltz p2, :cond_2

    .line 156
    iget-object p2, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/keypad/DialItem;->longClickNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->access$500(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object p2, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    iget-object p1, p1, Lus/zoom/zrc/base/widget/keypad/DialItem;->number:Ljava/lang/String;

    invoke-static {p2, p1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->access$500(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;Ljava/lang/String;)V

    .line 160
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->this$0:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    iget-object p2, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;->val$convertView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->access$300(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;Landroid/view/View;Z)V

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
