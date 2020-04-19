.class public Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "FarEndCameraControlDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/view/CommonCameraPanel$CommonCameraPanelListener;
.implements Lus/zoom/zrc/view/model/IShouldDismissWhenBindParticipantInSilent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;
    }
.end annotation


# instance fields
.field private cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

.field private handler:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

.field private hasLeaved:Z

.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

.field private mBtnGiveUp:Landroid/widget/ImageView;

.field private mCameraControlAction:I

.field private mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

.field private mContinueManipulatingCameraRunnable:Ljava/lang/Runnable;

.field private mLLSwitchCamera:Landroid/view/View;

.field private mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

.field private mStartContinueManipulationgCamera:Z

.field private mTextTitle:Landroid/widget/TextView;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->hasLeaved:Z

    .line 60
    new-instance v0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;-><init>(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;)V

    iput-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->handler:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

    .line 114
    new-instance v0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;-><init>(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    .line 156
    new-instance v0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;-><init>(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mContinueManipulatingCameraRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mLLSwitchCamera:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrcsdk/model/ZRCParticipant;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->hasLeaved:Z

    return p0
.end method

.method static synthetic access$302(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->hasLeaved:Z

    return p1
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->handler:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mStartContinueManipulationgCamera:Z

    return p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCameraControlAction:I

    return p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mContinueManipulatingCameraRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->onDoneClick()V

    return-void
.end method

.method private fitScreen()V
    .locals 4

    .line 333
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "requestLargeLayout dialog has not init yet!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 339
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "requestLargeLayout window has not init yet!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 345
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 346
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 347
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x3f59999a    # 0.85f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 348
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_2
    const v3, 0x3f7ae148    # 0.98f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const v3, 0x3f733333    # 0.95f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 350
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    return-void
.end method

.method private onDoneClick()V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->dismiss()V

    return-void
.end method

.method private updateParticipants()V
    .locals 2

    .line 106
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->userId:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCParticipantList;->getParticipantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 107
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/CommonCameraPanel;->updateCameraControlStatus(Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-eqz v0, :cond_1

    .line 110
    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/CommonCameraPanel;->updateCameraControlStatus(Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ActionDown()V
    .locals 5

    .line 309
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

    iget v0, v0, Lus/zoom/zrc/view/CommonCameraPanel;->cameraControlAction:I

    iput v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCameraControlAction:I

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mStartContinueManipulationgCamera:Z

    .line 311
    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 312
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    iget-object v3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v3

    iget-object v4, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

    iget v4, v4, Lus/zoom/zrc/view/CommonCameraPanel;->cameraControlAction:I

    invoke-virtual {v1, v3, v4, v2, v0}, Lus/zoom/zrcsdk/ConfApp;->farEndCameraControlWith(IIIZ)I

    goto :goto_0

    .line 314
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-eqz v1, :cond_1

    .line 315
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    iget-object v3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result v3

    iget-object v4, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

    iget v4, v4, Lus/zoom/zrc/view/CommonCameraPanel;->cameraControlAction:I

    invoke-virtual {v1, v3, v4, v2, v0}, Lus/zoom/zrcsdk/ConfApp;->farEndCameraControlWith(IIIZ)I

    :cond_1
    :goto_0
    return-void
.end method

.method public ActionUp()V
    .locals 5

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mStartContinueManipulationgCamera:Z

    .line 323
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    iget-object v3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v3

    iget-object v4, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

    iget v4, v4, Lus/zoom/zrc/view/CommonCameraPanel;->cameraControlAction:I

    invoke-virtual {v0, v3, v4, v2, v1}, Lus/zoom/zrcsdk/ConfApp;->farEndCameraControlWith(IIIZ)I

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-eqz v0, :cond_1

    .line 327
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    iget-object v3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result v3

    iget-object v4, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

    iget v4, v4, Lus/zoom/zrc/view/CommonCameraPanel;->cameraControlAction:I

    invoke-virtual {v0, v3, v4, v2, v1}, Lus/zoom/zrcsdk/ConfApp;->farEndCameraControlWith(IIIZ)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getBindUserId()I
    .locals 1

    .line 65
    iget v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->userId:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 276
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mLLSwitchCamera:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 277
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz p1, :cond_0

    .line 278
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->farEndswitchCameraForVideo(I)I

    goto :goto_1

    .line 279
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-eqz p1, :cond_5

    .line 280
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->farEndswitchCameraForVideo(I)I

    goto :goto_1

    .line 282
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mBtnGiveUp:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 283
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    const/4 v0, 0x1

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 284
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object v3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3, v2, v1, v0}, Lus/zoom/zrcsdk/ConfApp;->farEndCameraControlWith(IIIZ)I

    goto :goto_0

    .line 286
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-eqz p1, :cond_3

    .line 287
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object v3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3, v2, v1, v0}, Lus/zoom/zrcsdk/ConfApp;->farEndCameraControlWith(IIIZ)I

    .line 291
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 292
    :cond_4
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->dismissAllowingStateLoss()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 173
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "user_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 176
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "user_info_camera_control"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    .line 177
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->userId:I

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->userId:I

    .line 183
    :cond_1
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    .line 184
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    const/4 v1, 0x0

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnCameraControlResult:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 185
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 199
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 200
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 201
    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 202
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-le p3, v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    const/high16 v0, 0x4000000

    .line 205
    invoke-virtual {p3, v0}, Landroid/view/Window;->addFlags(I)V

    .line 207
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$layout;->far_end_camera_control:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 209
    sget p2, Lus/zoom/zrcbox/R$id;->btn_camera_contral_give_up:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mBtnGiveUp:Landroid/widget/ImageView;

    .line 210
    sget p2, Lus/zoom/zrcbox/R$id;->ll_switch_camera:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mLLSwitchCamera:Landroid/view/View;

    .line 211
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mTextTitle:Landroid/widget/TextView;

    .line 212
    sget p2, Lus/zoom/zrcbox/R$id;->contral_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/CommonCameraPanel;

    iput-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

    .line 213
    sget p2, Lus/zoom/zrcbox/R$id;->sc_done_bt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/ZRCImageView;

    .line 216
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 217
    new-instance p3, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$3;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$3;-><init>(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mBtnGiveUp:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mLLSwitchCamera:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->handler:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

    iget-object p3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mContinueManipulatingCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 228
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

    invoke-virtual {p2, p0}, Lus/zoom/zrc/view/CommonCameraPanel;->setCommonCameraPanelListener(Lus/zoom/zrc/view/CommonCameraPanel$CommonCameraPanelListener;)V

    .line 229
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz p2, :cond_2

    .line 230
    iget-object p3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object p2

    invoke-virtual {p3, p2}, Lus/zoom/zrc/view/CommonCameraPanel;->updateCameraControlStatus(Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-eqz p2, :cond_3

    .line 232
    iget-object p3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mCommonCameraPanel:Lus/zoom/zrc/view/CommonCameraPanel;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object p2

    invoke-virtual {p3, p2}, Lus/zoom/zrc/view/CommonCameraPanel;->updateCameraControlStatus(Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V

    .line 234
    :cond_3
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    const/16 p3, 0x3e9

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    const-string v3, "FarEndCameraControlDialogFragment1"

    .line 235
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const-string p2, ""

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object p2

    .line 237
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mTextTitle:Landroid/widget/TextView;

    .line 238
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$string;->control_user_camera:I

    .line 237
    invoke-static {v3, v4, p2}, Lus/zoom/zrcsdk/util/StringUtil;->formatEnglishNameWithApostrophes(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->isCanSwitchCamera()Z

    move-result p2

    if-nez p2, :cond_5

    .line 240
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->handler:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

    invoke-virtual {p2, p3, v2}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 242
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 244
    :cond_5
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->handler:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

    invoke-virtual {p2, v1, v2}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 246
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 248
    :cond_6
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-eqz p2, :cond_9

    const-string v3, "FarEndCameraControlDialogFragment2"

    .line 249
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserDisplayName()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserDisplayName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    const-string p2, ""

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserDisplayName()Ljava/lang/String;

    move-result-object p2

    .line 251
    :goto_2
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->mTextTitle:Landroid/widget/TextView;

    .line 252
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$string;->control_user_camera:I

    .line 251
    invoke-static {v3, v4, p2}, Lus/zoom/zrcsdk/util/StringUtil;->formatEnglishNameWithApostrophes(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->isCanSwitchCamera()Z

    move-result p2

    if-nez p2, :cond_8

    .line 254
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->handler:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

    invoke-virtual {p2, p3, v2}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 256
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 258
    :cond_8
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->handler:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

    invoke-virtual {p2, v1, v2}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 260
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    :goto_3
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 269
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroy()V

    .line 270
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 356
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 357
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnCameraControlResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_0

    .line 358
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "type"

    .line 359
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "userId"

    .line 360
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 361
    iget p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->userId:I

    .line 362
    invoke-static {p2, p1}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 363
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 70
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->participantList:I

    if-ne p2, p1, :cond_0

    .line 71
    invoke-direct {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->updateParticipants()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 190
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 191
    invoke-direct {p0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->fitScreen()V

    return-void
.end method
