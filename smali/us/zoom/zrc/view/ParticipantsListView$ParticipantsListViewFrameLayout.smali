.class public Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ParticipantsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ParticipantsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParticipantsListViewFrameLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantsListView;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/view/ParticipantsListView;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lus/zoom/zrc/view/ParticipantsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 625
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    .line 626
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lus/zoom/zrc/view/ParticipantsListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Lus/zoom/zrc/view/ParticipantsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 629
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    .line 630
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lus/zoom/zrc/view/ParticipantsListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Lus/zoom/zrc/view/ParticipantsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 633
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    .line 634
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lus/zoom/zrc/view/ParticipantsListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Lus/zoom/zrc/view/ParticipantsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 638
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    .line 639
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 647
    new-array v0, v0, [I

    .line 648
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {v1}, Lus/zoom/zrc/view/ParticipantsListView;->access$400(Lus/zoom/zrc/view/ParticipantsListView;)Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getLocationInWindow([I)V

    .line 649
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    aget v2, v0, v2

    iget-object v6, p0, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {v6}, Lus/zoom/zrc/view/ParticipantsListView;->access$400(Lus/zoom/zrc/view/ParticipantsListView;)Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    aget v0, v0, v4

    iget-object v6, p0, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {v6}, Lus/zoom/zrc/view/ParticipantsListView;->access$400(Lus/zoom/zrc/view/ParticipantsListView;)Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    int-to-float v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 650
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {v0, v1, p1}, Lus/zoom/zrc/view/ParticipantsListView;->access$500(Lus/zoom/zrc/view/ParticipantsListView;Landroid/graphics/RectF;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 653
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {v0}, Lus/zoom/zrc/view/ParticipantsListView;->access$400(Lus/zoom/zrc/view/ParticipantsListView;)Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getmListParticipantPop()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {p1}, Lus/zoom/zrc/view/ParticipantsListView;->access$400(Lus/zoom/zrc/view/ParticipantsListView;)Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return v4

    .line 661
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
