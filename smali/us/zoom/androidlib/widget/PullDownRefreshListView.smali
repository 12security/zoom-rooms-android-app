.class public Lus/zoom/androidlib/widget/PullDownRefreshListView;
.super Landroid/widget/ListView;
.source "PullDownRefreshListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;,
        Lus/zoom/androidlib/widget/PullDownRefreshListView$PullDownRefreshListener;
    }
.end annotation


# instance fields
.field private mDeltaY:I

.field private mIsFingerReleased:Z

.field private mIsRefreshing:Z

.field private mLastX:I

.field private mLastY:I

.field private mListener:Lus/zoom/androidlib/widget/PullDownRefreshListView$PullDownRefreshListener;

.field private mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

.field private mOverScrollSize:I

.field private mPullDownRefreshEnabled:Z

.field private mYOnOverScroll:I

.field private mbFirstMove:Z

.field private mbOverScrolled:Z

.field private mbScrollingHorizontal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastX:I

    .line 28
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastY:I

    .line 29
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mDeltaY:I

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsFingerReleased:Z

    .line 31
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mOverScrollSize:I

    .line 32
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mYOnOverScroll:I

    .line 36
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mPullDownRefreshEnabled:Z

    .line 37
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsRefreshing:Z

    .line 38
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbOverScrolled:Z

    .line 39
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbScrollingHorizontal:Z

    .line 40
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbFirstMove:Z

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 27
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastX:I

    .line 28
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastY:I

    .line 29
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mDeltaY:I

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsFingerReleased:Z

    .line 31
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mOverScrollSize:I

    .line 32
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mYOnOverScroll:I

    .line 36
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mPullDownRefreshEnabled:Z

    .line 37
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsRefreshing:Z

    .line 38
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbOverScrolled:Z

    .line 39
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbScrollingHorizontal:Z

    .line 40
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbFirstMove:Z

    .line 52
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 27
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastX:I

    .line 28
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastY:I

    .line 29
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mDeltaY:I

    const/4 p3, 0x1

    .line 30
    iput-boolean p3, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsFingerReleased:Z

    .line 31
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mOverScrollSize:I

    .line 32
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mYOnOverScroll:I

    .line 36
    iput-boolean p3, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mPullDownRefreshEnabled:Z

    .line 37
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsRefreshing:Z

    .line 38
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbOverScrolled:Z

    .line 39
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbScrollingHorizontal:Z

    .line 40
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbFirstMove:Z

    .line 47
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private doRefresh()V
    .locals 1

    const/4 v0, 0x1

    .line 365
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->showRefreshing(Z)V

    .line 367
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mListener:Lus/zoom/androidlib/widget/PullDownRefreshListView$PullDownRefreshListener;

    if-eqz v0, :cond_0

    .line 368
    invoke-interface {v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$PullDownRefreshListener;->onPullDownRefresh()V

    .line 370
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->onPullDownRefresh()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-virtual {p0, p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    new-instance p1, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    .line 72
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 74
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->show(Z)V

    return-void
.end method

.method private isOverScrolledBottom(I)Z
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_2

    .line 352
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 353
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getLastVisiblePosition()I

    move-result p1

    .line 354
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    return v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getHeight()I

    move-result v1

    if-gt p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method private isOverScrolledTop(I)Z
    .locals 1

    const/4 v0, 0x0

    if-gez p1, :cond_2

    .line 339
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 340
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getFirstVisiblePosition()I

    move-result p1

    if-lez p1, :cond_0

    return v0

    .line 344
    :cond_0
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method


# virtual methods
.method protected ZM_onOverScrolled(IIZZ)V
    .locals 0

    .line 192
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mPullDownRefreshEnabled:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsRefreshing:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mDeltaY:I

    div-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    .line 197
    invoke-virtual {p0, p2, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->scrollBy(II)V

    .line 199
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsFingerReleased:Z

    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p0, p2, p2}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->scrollTo(II)V

    .line 203
    :cond_1
    iget p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mYOnOverScroll:I

    if-nez p1, :cond_2

    .line 204
    iget p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastY:I

    iput p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mYOnOverScroll:I

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public isPullDownRefreshEnabled()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mPullDownRefreshEnabled:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsRefreshing:Z

    return v0
.end method

.method public notifyRefreshDone()V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->showRefreshing(Z)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    return-void
.end method

.method protected onPullDownRefresh()V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 211
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mPullDownRefreshEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsRefreshing:Z

    if-eqz p1, :cond_0

    goto/16 :goto_4

    .line 214
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 220
    iget-boolean v2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsFingerReleased:Z

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 225
    :pswitch_0
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbScrollingHorizontal:Z

    if-eqz p1, :cond_2

    return v0

    .line 228
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 231
    iget v3, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastY:I

    sub-int/2addr v3, p2

    iput v3, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mDeltaY:I

    .line 232
    iget v3, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastX:I

    sub-int/2addr v3, p1

    .line 234
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbFirstMove:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mDeltaY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 235
    iput-boolean v2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbScrollingHorizontal:Z

    .line 236
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbFirstMove:Z

    return v0

    .line 240
    :cond_3
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbFirstMove:Z

    .line 242
    iget p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mDeltaY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v3, 0x4

    if-ge p1, v3, :cond_4

    return v0

    .line 246
    :cond_4
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastY:I

    .line 248
    iget p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mDeltaY:I

    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->isOverScrolledTop(I)Z

    move-result p1

    .line 249
    iget v3, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mDeltaY:I

    invoke-direct {p0, v3}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->isOverScrolledBottom(I)Z

    move-result v3

    if-nez p1, :cond_6

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_7

    .line 254
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5, v0, v2}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->ZM_onOverScrolled(IIZZ)V

    .line 255
    iput-boolean v2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbOverScrolled:Z

    .line 258
    :cond_7
    iget v4, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mYOnOverScroll:I

    if-lez v4, :cond_9

    sub-int/2addr p2, v4

    .line 259
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mOverScrollSize:I

    .line 260
    iget-object p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    iget v4, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mOverScrollSize:I

    int-to-float v4, v4

    invoke-virtual {p2, v4}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->updateUI(F)V

    if-eqz p1, :cond_8

    .line 262
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->isNotificationVisible()Z

    move-result p1

    if-nez p1, :cond_8

    .line 263
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p1, v2}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->show(Z)V

    .line 264
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->getNotificationHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->scrollTo(II)V

    :cond_8
    if-nez v3, :cond_9

    .line 268
    iget p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mDeltaY:I

    div-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->scrollBy(II)V

    :cond_9
    return v0

    .line 282
    :pswitch_1
    iput-boolean v2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbFirstMove:Z

    .line 284
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbScrollingHorizontal:Z

    if-eqz p1, :cond_a

    .line 285
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbScrollingHorizontal:Z

    return v0

    .line 289
    :cond_a
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastY:I

    .line 290
    iput-boolean v2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsFingerReleased:Z

    .line 292
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->isNotificationVisible()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->needRefreshOnReleased()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 293
    invoke-direct {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->doRefresh()V

    goto :goto_2

    .line 294
    :cond_b
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->isNotificationVisible()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 295
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->show(Z)V

    .line 296
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->clearStatus()V

    .line 299
    :cond_c
    :goto_2
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbOverScrolled:Z

    if-eqz p1, :cond_d

    .line 300
    invoke-virtual {p0, v0, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->scrollTo(II)V

    .line 303
    :cond_d
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mOverScrollSize:I

    .line 304
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mYOnOverScroll:I

    .line 305
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbOverScrolled:Z

    goto :goto_3

    .line 273
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastX:I

    .line 274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mLastY:I

    .line 275
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsFingerReleased:Z

    .line 276
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbScrollingHorizontal:Z

    .line 277
    iput-boolean v2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mbFirstMove:Z

    .line 278
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mOverScrollSize:I

    .line 279
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mYOnOverScroll:I

    :goto_3
    return v0

    :cond_e
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPullDownRefreshEnabled(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mPullDownRefreshEnabled:Z

    return-void
.end method

.method public setPullDownRefreshListener(Lus/zoom/androidlib/widget/PullDownRefreshListView$PullDownRefreshListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mListener:Lus/zoom/androidlib/widget/PullDownRefreshListView$PullDownRefreshListener;

    return-void
.end method

.method public setTextResources(III)V
    .locals 1

    .line 65
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->setTextResources(III)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 319
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsRefreshing:Z

    .line 320
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->showLoading()V

    .line 321
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setSelection(I)V

    .line 322
    invoke-virtual {p0, v0, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->scrollTo(II)V

    goto :goto_0

    .line 324
    :cond_0
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mIsRefreshing:Z

    .line 325
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->clearStatus()V

    .line 326
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView;->mNotificationView:Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->show(Z)V

    :goto_0
    return-void
.end method
