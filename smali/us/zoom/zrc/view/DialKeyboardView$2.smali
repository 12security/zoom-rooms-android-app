.class Lus/zoom/zrc/view/DialKeyboardView$2;
.super Ljava/lang/Object;
.source "DialKeyboardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/DialKeyboardView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/DialKeyboardView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DialKeyboardView;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$2;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 295
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView$2;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {v0}, Lus/zoom/zrc/view/DialKeyboardView;->access$300(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView$2;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {v0}, Lus/zoom/zrc/view/DialKeyboardView;->access$300(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView$2;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/DialKeyboardView;->setButtonStatus()V

    :cond_0
    return-void
.end method
