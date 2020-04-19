.class Lus/zoom/zrc/view/PresentationFragment$1;
.super Ljava/lang/Object;
.source "PresentationFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/PresentationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/PresentationFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/PresentationFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lus/zoom/zrc/view/PresentationFragment$1;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment$1;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/PresentationFragment;->access$000(Lus/zoom/zrc/view/PresentationFragment;)Landroid/view/View;

    move-result-object p1

    const/high16 p2, 0x3e800000    # 0.25f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 94
    :cond_0
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment$1;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/PresentationFragment;->access$000(Lus/zoom/zrc/view/PresentationFragment;)Landroid/view/View;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
