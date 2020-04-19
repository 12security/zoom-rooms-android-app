.class public Lus/zoom/zrc/view/InviteMeetingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "InviteMeetingFrameLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 59
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 61
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    return v1

    :cond_0
    return v3

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_7

    .line 34
    sget v0, Lus/zoom/zrcbox/R$id;->edtSearch:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/InviteMeetingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCSearchView;

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 36
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->searchlistview:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/InviteMeetingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 37
    sget v2, Lus/zoom/zrcbox/R$id;->selectedjoinlist:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/InviteMeetingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 38
    sget v3, Lus/zoom/zrcbox/R$id;->dynamic_searchlistview:I

    invoke-virtual {p0, v3}, Lus/zoom/zrc/view/InviteMeetingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 39
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/view/InviteMeetingFrameLayout;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    if-eqz v4, :cond_1

    .line 41
    invoke-direct {p0, v1, p1}, Lus/zoom/zrc/view/InviteMeetingFrameLayout;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 43
    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    if-eqz v4, :cond_3

    .line 44
    invoke-direct {p0, v2, p1}, Lus/zoom/zrc/view/InviteMeetingFrameLayout;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 46
    :cond_4
    :goto_1
    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v4, :cond_5

    .line 47
    invoke-direct {p0, v3, p1}, Lus/zoom/zrc/view/InviteMeetingFrameLayout;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 50
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCSearchView;->closeSearchView()V

    .line 53
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
