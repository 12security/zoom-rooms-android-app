.class public Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "MeetingOptionsSpeakerViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$MyHandler;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private group:Landroid/widget/RadioGroup;

.field private handler:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$MyHandler;

.field private height:I

.field private layout:Landroid/view/View;

.field private mBottomLeftButton:Landroid/view/View;

.field private mBottomRightButton:Landroid/view/View;

.field private mLeftTopButton:Landroid/view/View;

.field private mRightTopButton:Landroid/view/View;

.field private mVedioLabel:Landroid/widget/TextView;

.field private mVideoButton:Landroid/widget/ImageView;

.field private moveAnimatorStart:Z

.field private oldValue:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

.field private scaleAnimatorStart:Z

.field private swapContentBotton:Landroid/view/View;

.field private swapContentLayout:Landroid/widget/LinearLayout;

.field private thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;

.field private valueAnimator:Landroid/animation/ObjectAnimator;

.field private videoHeight:I

.field private videoWidth:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->moveAnimatorStart:Z

    .line 66
    iput-boolean v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->scaleAnimatorStart:Z

    .line 73
    new-instance v0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$MyHandler;-><init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$1;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->handler:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$MyHandler;

    return-void
.end method

.method private ScaleAnimationView(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 5

    .line 566
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const v1, 0x3c23d70a    # 0.01f

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 569
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v1, 0x3f36db6e

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 581
    :cond_3
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 582
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_4
    const/4 v0, 0x2

    .line 584
    new-array v0, v0, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleX()F

    move-result v4

    aput v4, v0, v3

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->animator:Landroid/animation/ValueAnimator;

    .line 585
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 586
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 587
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;-><init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 603
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;-><init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 652
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setGroupChildHeight()V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 49
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVedioLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;I)I
    .locals 0

    .line 49
    iput p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoWidth:I

    return p1
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 49
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$402(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;I)I
    .locals 0

    .line 49
    iput p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoHeight:I

    return p1
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;
    .locals 0

    .line 49
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->oldValue:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    return-object p0
.end method

.method static synthetic access$502(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;
    .locals 0

    .line 49
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->oldValue:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    return-object p1
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->updateVideoControl(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->moveAnimatorStart:Z

    return p0
.end method

.method static synthetic access$702(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->moveAnimatorStart:Z

    return p1
.end method

.method static synthetic access$800(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->scaleAnimatorStart:Z

    return p0
.end method

.method static synthetic access$802(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->scaleAnimatorStart:Z

    return p1
.end method

.method static synthetic access$900(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setViewEnable(Z)V

    return-void
.end method

.method private initView()V
    .locals 6

    .line 222
    iget v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->width:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x42aa0000    # 85.0f

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v1, v1, v4

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 223
    iget v1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->height:I

    int-to-float v1, v1

    const v5, 0x3f333333    # 0.7f

    mul-float v1, v1, v5

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    mul-float v2, v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 224
    div-int/lit8 v0, v0, 0x3

    .line 225
    div-int/lit8 v1, v1, 0x3

    .line 226
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$drawable;->smallvideo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 228
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v0

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v3, v4

    div-float/2addr v0, v5

    int-to-float v1, v1

    int-to-float v2, v2

    mul-float v4, v4, v2

    div-float/2addr v1, v4

    cmpl-float v4, v0, v1

    if-lez v4, :cond_0

    move v0, v1

    :cond_0
    mul-float v2, v2, v0

    float-to-int v1, v2

    mul-float v3, v3, v0

    float-to-int v0, v3

    .line 236
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 237
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 238
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 239
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 240
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 241
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 242
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 243
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 244
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 245
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 246
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 247
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 248
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 249
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 250
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 251
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$2;-><init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private moveAnimationView(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 2

    .line 505
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPosition()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 519
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 520
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 521
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    .line 522
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    goto :goto_0

    .line 507
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 508
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 509
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    .line 510
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    goto :goto_0

    .line 525
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 526
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 527
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    .line 528
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    goto :goto_0

    .line 513
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 514
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 515
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    .line 516
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    .line 533
    :goto_0
    invoke-direct {p0, v1, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->moveVideoButton(FF)V

    return-void
.end method

.method private moveToPosition(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 316
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 308
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0

    .line 319
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 320
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0

    .line 311
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 312
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    :goto_0
    return-void
.end method

.method private moveVideoButton(FF)V
    .locals 6

    .line 537
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->valueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->valueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    const-string v0, "x"

    const/4 v1, 0x2

    .line 540
    new-array v2, v1, [F

    iget-object v3, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const-string v0, "y"

    .line 541
    new-array v2, v1, [F

    iget-object v5, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getY()F

    move-result v5

    aput v5, v2, v4

    aput p2, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 542
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v1, v4

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->valueAnimator:Landroid/animation/ObjectAnimator;

    .line 543
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->valueAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 544
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->valueAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$3;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$3;-><init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->valueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setGroupChildHeight()V
    .locals 5

    .line 698
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->layout_options_radiogroup_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    .line 699
    :goto_0
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 700
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    :cond_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 703
    :goto_2
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 704
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private setVideoWidthAndHeight(II)V
    .locals 3

    .line 327
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 328
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 329
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 330
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 331
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 332
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 333
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 334
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 346
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 338
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 350
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    goto :goto_0

    .line 341
    :cond_3
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 342
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 353
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setlayoutParmas(Landroid/view/View;I)V

    .line 354
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setlayoutParmas(Landroid/view/View;I)V

    .line 355
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setlayoutParmas(Landroid/view/View;I)V

    .line 356
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setlayoutParmas(Landroid/view/View;I)V

    .line 357
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setlayoutParmas(Landroid/view/View;I)V

    return-void
.end method

.method private setViewEnable(Z)V
    .locals 2

    .line 468
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 469
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 470
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 473
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 474
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 475
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setlayoutParmas(Landroid/view/View;I)V
    .locals 3

    .line 364
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoWidth:I

    int-to-float v0, v0

    const v1, 0x3fb33333    # 1.4f

    div-float/2addr v0, v1

    .line 366
    iget v2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    goto :goto_0

    .line 368
    :cond_0
    iget v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    .line 369
    iget v2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    :goto_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 372
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 373
    iget p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoWidth:I

    int-to-float v0, p2

    .line 374
    iget p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoHeight:I

    int-to-float v2, p2

    goto :goto_1

    .line 376
    :cond_1
    iget p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoWidth:I

    int-to-float p2, p2

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float p2, p2, v0

    .line 377
    iget v1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoHeight:I

    int-to-float v1, v1

    mul-float v2, v1, v0

    move v0, p2

    .line 380
    :cond_2
    :goto_1
    iget p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoWidth:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 381
    iget p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->videoHeight:I

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private updateVideoControl(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 3

    .line 269
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 288
    :pswitch_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    sget v2, Lus/zoom/zrcbox/R$id;->video_2x:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    const/4 v0, 0x2

    .line 289
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setVideoWidthAndHeight(II)V

    .line 290
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 279
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setVideoWidthAndHeight(II)V

    .line 280
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    sget v2, Lus/zoom/zrcbox/R$id;->video_1x:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 281
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    sget v2, Lus/zoom/zrcbox/R$id;->video_off:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 300
    :goto_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->moveToPosition(I)V

    .line 301
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->layout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateVideoControlStateOnly(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 264
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->updateVideoControl(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 265
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private updateViewsDescription(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 663
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->swapContentBotton:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$string;->video_accessibility_content_thumbnail:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 664
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$string;->content_accessibility_topleft:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 665
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$string;->content_accessibility_topright:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 666
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$string;->content_accessibility_bottomleft:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 667
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$string;->content_accessibility_bottomright:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 669
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->swapContentBotton:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$string;->video_accessibility_video_thumbnail:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 670
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$string;->video_accessibility_topleft:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 671
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$string;->video_accessibility_topright:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 672
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$string;->video_accessibility_bottomleft:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 673
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$string;->video_accessibility_bottomright:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 675
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 679
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPosition()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    goto/16 :goto_1

    .line 688
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 682
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 691
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 685
    :cond_5
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public changeVideoIcon()V
    .locals 2

    .line 191
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSwitchFloatingShareContentSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->thumbnail_max_video:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVedioLabel:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->video_on_prompt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 195
    :cond_0
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInFloatingShareContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->thumbnail_share_content:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVedioLabel:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->content_on_prompt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 199
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result v0

    if-nez v0, :cond_3

    .line 200
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->thumbnail_max_video:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->thumbnail_video:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVedioLabel:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->video_on_prompt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSharing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 207
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result v0

    if-nez v0, :cond_3

    .line 208
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->thumbnail_maxshare_content:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 212
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result v0

    if-nez v0, :cond_3

    .line 213
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->thumbnail_max_video:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    :cond_3
    :goto_0
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInFloatingShareContent()Z

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->updateViewsDescription(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 105
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->context:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setStyle(II)V

    .line 107
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->width:I

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->width:I

    .line 112
    :goto_0
    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->height:I

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 435
    sget p1, Lus/zoom/zrcbox/R$id;->video_off:I

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    .line 437
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVedioLabel:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, ""

    const-string p2, "video_off"

    .line 439
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->handler:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$MyHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 442
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    goto :goto_0

    .line 443
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$id;->video_1x:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 446
    :cond_1
    sget p1, Lus/zoom/zrcbox/R$id;->video_2x:I

    if-ne p2, p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 450
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    .line 454
    :cond_3
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result v1

    if-ne v1, p1, :cond_4

    return-void

    .line 455
    :cond_4
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/AppModel;->setVideoThumbInfoUpdate(Z)V

    .line 456
    new-instance v1, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    invoke-direct {v1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;-><init>()V

    .line 457
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->setPosition(I)V

    .line 458
    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->setSize(I)V

    .line 459
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->setPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    .line 460
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->isSupported()Z

    move-result p2

    invoke-virtual {v1, p2}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->setSupported(Z)V

    .line 461
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2, v1}, Lus/zoom/zrc/model/AppModel;->setVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 462
    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 463
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setViewEnable(Z)V

    .line 464
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p2

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPosition()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lus/zoom/zrcsdk/ConfApp;->controlVideoPosition(II)I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 395
    sget v0, Lus/zoom/zrcbox/R$id;->swap_content_image:I

    if-ne p1, v0, :cond_0

    .line 396
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInFloatingShareContent()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->updateViewsDescription(Z)V

    .line 397
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInFloatingShareContent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->switchToFloatingShareForSingleScreen(Z)I

    return-void

    .line 401
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->video_accessibility_topleft:I

    const/16 v1, 0x9

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 404
    :cond_1
    sget v0, Lus/zoom/zrcbox/R$id;->video_accessibility_topright:I

    if-ne p1, v0, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 407
    :cond_2
    sget v0, Lus/zoom/zrcbox/R$id;->video_accessibility_bottomleft:I

    if-ne p1, v0, :cond_3

    const/16 v1, 0xc

    goto :goto_0

    .line 410
    :cond_3
    sget v0, Lus/zoom/zrcbox/R$id;->video_accessibility_bottomright:I

    if-ne p1, v0, :cond_4

    const/4 v1, 0x6

    .line 414
    :cond_4
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 418
    :cond_5
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPosition()I

    move-result v0

    if-ne v0, v1, :cond_6

    return-void

    .line 419
    :cond_6
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/AppModel;->setVideoThumbInfoUpdate(Z)V

    .line 420
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;-><init>()V

    .line 421
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->setPosition(I)V

    .line 422
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result v3

    invoke-virtual {v0, v3}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->setSize(I)V

    .line 423
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v3

    invoke-virtual {v0, v3}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->setPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    .line 424
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->isSupported()Z

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->setSupported(Z)V

    .line 425
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppModel;->setVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 426
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 427
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setViewEnable(Z)V

    .line 428
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInFloatingShareContent()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->updateViewsDescription(Z)V

    .line 429
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lus/zoom/zrcsdk/ConfApp;->controlVideoPosition(II)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 168
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 118
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    if-nez p3, :cond_1

    .line 119
    sget p3, Lus/zoom/zrcbox/R$layout;->meeting_options_speaker_view_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    .line 120
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->video_accessibility_topleft:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    .line 121
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->video_accessibility_topright:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    .line 122
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->video_accessibility_bottomleft:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    .line 123
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->video_accessibility_bottomright:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    .line 124
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->swap_content_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->swapContentBotton:Landroid/view/View;

    .line 125
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->swap_content_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->swapContentLayout:Landroid/widget/LinearLayout;

    .line 126
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumbnail_maxshare_content_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

    .line 127
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->layout:Landroid/view/View;

    .line 128
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->video_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVideoButton:Landroid/widget/ImageView;

    .line 129
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    .line 130
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->video_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mVedioLabel:Landroid/widget/TextView;

    .line 131
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->title:Landroid/widget/TextView;

    .line 132
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mLeftTopButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mRightTopButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomLeftButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->mBottomRightButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->swapContentBotton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 138
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInFloatingShareContent()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->updateViewsDescription(Z)V

    .line 139
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result p1

    if-nez p1, :cond_0

    .line 140
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->title:Landroid/widget/TextView;

    sget p2, Lus/zoom/zrcbox/R$string;->video_control:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->title:Landroid/widget/TextView;

    sget p2, Lus/zoom/zrcbox/R$string;->layout_options:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewManager;

    if-eqz p1, :cond_2

    .line 146
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    invoke-interface {p1, p2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 148
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->layout:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->changeVideoIcon()V

    .line 150
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->initView()V

    .line 151
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->group:Landroid/widget/RadioGroup;

    new-instance p2, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$1;-><init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->post(Ljava/lang/Runnable;)Z

    .line 157
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->convertView:Landroid/view/View;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 657
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x1

    .line 658
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setViewEnable(Z)V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 174
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 175
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->videoLayoutStatus:I

    if-ne p1, p2, :cond_0

    .line 176
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSpeaker()Z

    move-result p1

    if-nez p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 162
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onResume()V

    .line 163
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->updateSwapContentLayoutVisible()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 386
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 387
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 388
    iget v1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->width:I

    iget v2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 2

    .line 479
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isVideoThumbInfoUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->moveAnimatorStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->scaleAnimatorStart:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 480
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->setViewEnable(Z)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->oldValue:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    if-nez v0, :cond_2

    .line 484
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->ScaleAnimationView(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 485
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->moveAnimationView(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 486
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->oldValue:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    return-void

    .line 489
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 491
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->ScaleAnimationView(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 493
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->oldValue:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPosition()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 494
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->moveAnimationView(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 496
    :cond_4
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->oldValue:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    .line 498
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->updateVideoControlStateOnly(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    return-void
.end method

.method public updateSwapContentLayoutVisible()V
    .locals 2

    .line 183
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canSwitchFloatingShareContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->swapContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->swapContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
