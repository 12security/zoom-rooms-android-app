.class Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;
.super Landroid/widget/LinearLayout;
.source "PullDownRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/PullDownRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationView"
.end annotation


# static fields
.field static final MIN_SIZE_TO_REFRESH:I = 0x78


# instance fields
.field mImgIcon:Landroid/widget/ImageView;

.field mItemContainer:Landroid/view/View;

.field mOverScrollSize:F

.field mProgressBar:Landroid/view/View;

.field mTextLoading:I

.field mTextPullDownToRefresh:I

.field mTextReleaseToRefresh:I

.field mTxtMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 389
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mImgIcon:Landroid/widget/ImageView;

    .line 379
    iput-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTxtMsg:Landroid/widget/TextView;

    .line 380
    iput-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mItemContainer:Landroid/view/View;

    .line 381
    iput-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mProgressBar:Landroid/view/View;

    const/4 v0, 0x0

    .line 382
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mOverScrollSize:F

    .line 384
    sget v0, Lus/zoom/androidlib/R$string;->zm_lbl_pull_down_refresh_list_release_to_refresh:I

    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTextReleaseToRefresh:I

    .line 385
    sget v0, Lus/zoom/androidlib/R$string;->zm_lbl_pull_down_refresh_list_pull_down_to_refresh:I

    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTextPullDownToRefresh:I

    .line 386
    sget v0, Lus/zoom/androidlib/R$string;->zm_lbl_pull_down_refresh_list_loading:I

    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTextLoading:I

    .line 391
    sget v0, Lus/zoom/androidlib/R$layout;->zm_pull_down_refresh_message:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 393
    sget p1, Lus/zoom/androidlib/R$id;->imgIcon:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mImgIcon:Landroid/widget/ImageView;

    .line 394
    sget p1, Lus/zoom/androidlib/R$id;->txtMsg:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTxtMsg:Landroid/widget/TextView;

    .line 395
    sget p1, Lus/zoom/androidlib/R$id;->itemContainer:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mItemContainer:Landroid/view/View;

    .line 396
    sget p1, Lus/zoom/androidlib/R$id;->progressBar1:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mProgressBar:Landroid/view/View;

    .line 398
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mProgressBar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clearStatus()V
    .locals 2

    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mOverScrollSize:F

    .line 403
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 404
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTxtMsg:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTextPullDownToRefresh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 405
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mImgIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public getNotificationHeight()I
    .locals 3

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    .line 471
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 472
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 473
    invoke-virtual {p0, v2, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->measure(II)V

    .line 474
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public isNotificationVisible()Z
    .locals 1

    .line 459
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mItemContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needRefreshOnReleased()Z
    .locals 3

    .line 455
    iget v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mOverScrollSize:F

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .line 463
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTxtMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextResources(III)V
    .locals 0

    .line 410
    iput p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTextReleaseToRefresh:I

    .line 411
    iput p2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTextPullDownToRefresh:I

    .line 412
    iput p3, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTextLoading:I

    .line 414
    iget p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mOverScrollSize:F

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->updateUI(F)V

    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 467
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mItemContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLoading()V
    .locals 3

    .line 418
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 419
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mImgIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTxtMsg:Landroid/widget/TextView;

    iget v2, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTextLoading:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 422
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mItemContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateUI(F)V
    .locals 5

    .line 426
    iget v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mOverScrollSize:F

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 428
    :goto_0
    iput p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mOverScrollSize:F

    .line 430
    iget p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mOverScrollSize:F

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-ne v0, v3, :cond_2

    return-void

    :cond_2
    if-eqz v3, :cond_3

    .line 436
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTxtMsg:Landroid/widget/TextView;

    iget v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTextPullDownToRefresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 437
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/androidlib/R$anim;->zm_pull_down_refresh_rotate_to_down:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 438
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 439
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 440
    invoke-virtual {p1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 441
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 443
    :cond_3
    iget-object p1, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTxtMsg:Landroid/widget/TextView;

    iget v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mTextReleaseToRefresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 444
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/androidlib/R$anim;->zm_pull_down_refresh_rotate_to_up:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 445
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 446
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 447
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 448
    invoke-virtual {p1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 449
    iget-object v0, p0, Lus/zoom/androidlib/widget/PullDownRefreshListView$NotificationView;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void
.end method
