.class public Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "VideoLayoutViewSelectDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;
    }
.end annotation


# instance fields
.field private changeContentIcon:Landroid/widget/ImageView;

.field private changeContentLayout:Landroid/view/View;

.field private contentOnlyViewLayout:Landroid/view/View;

.field private contentOnly_Image:Landroid/widget/ImageView;

.field private galleryViewLayout:Landroid/view/View;

.field private galleryView_Image:Landroid/widget/ImageView;

.field private isMultiShareBefore:Z

.field private mNotifyMeetingMainControllerListener:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;

.field private meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

.field private shareSourceCount:I

.field private speakerView_Image:Landroid/widget/ImageView;

.field private thumbnailViewLayout:Landroid/view/View;

.field private thumbnailView_Image:Landroid/widget/ImageView;

.field private tvMultiShareCount:Landroid/widget/TextView;

.field private videoLayoutStyle:I

.field private zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->videoLayoutStyle:I

    .line 70
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->speakerView_Image:Landroid/widget/ImageView;

    return-object p0
.end method

.method private drawImageViewRed(Landroid/widget/ImageView;I)V
    .locals 2

    .line 315
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingRedPointController;->shouldShowOnChangeContent()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->drawMultiShareIconInstruction(Landroid/content/Context;Ljava/lang/Boolean;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private updateShowingLayout()V
    .locals 5

    .line 280
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->shouldShowChangeContent()Z

    move-result v0

    .line 281
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getQuantityOfScreens()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 284
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 285
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryViewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->tvMultiShareCount:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->shareSourceCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentLayout:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$string;->total_of_shared_screens:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->shareSourceCount:I

    .line 289
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 288
    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryViewLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isShareOnAllScreensSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->thumbnailViewLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnlyViewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->tvMultiShareCount:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->shareSourceCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentLayout:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$string;->total_of_shared_screens:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->shareSourceCount:I

    .line 302
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 301
    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnlyViewLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 308
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnlyViewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->thumbnailViewLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->speakerView_Image:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 172
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 175
    :cond_0
    iget p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->videoLayoutStyle:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    return-void

    .line 178
    :cond_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->updateWallviewStyle(I)I

    .line 179
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->mNotifyMeetingMainControllerListener:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;

    invoke-interface {p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;->optionsDismiss()V

    goto/16 :goto_1

    .line 180
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->thumbnailView_Image:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 181
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 184
    :cond_3
    iget p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->videoLayoutStyle:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    return-void

    .line 187
    :cond_4
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->updateWallviewStyle(I)I

    .line 188
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->mNotifyMeetingMainControllerListener:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;

    invoke-interface {p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;->optionsDismiss()V

    goto/16 :goto_1

    .line 189
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_9

    .line 190
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 193
    :cond_6
    iget p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->videoLayoutStyle:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    return-void

    .line 196
    :cond_7
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchWallview()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 197
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->updateWallviewStyle(I)I

    .line 199
    :cond_8
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->mNotifyMeetingMainControllerListener:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;

    invoke-interface {p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;->optionsDismiss()V

    goto :goto_1

    .line 200
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnly_Image:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_d

    .line 201
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 204
    :cond_a
    iget p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->videoLayoutStyle:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    return-void

    .line 207
    :cond_b
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchShareOnAllScreens()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 208
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->updateWallviewStyle(I)I

    .line 210
    :cond_c
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->mNotifyMeetingMainControllerListener:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;

    invoke-interface {p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;->optionsDismiss()V

    goto :goto_1

    .line 211
    :cond_d
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_f

    .line 212
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingRedPointController;->onClickChangeContent()V

    .line 214
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 215
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    goto :goto_0

    .line 217
    :cond_e
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    .line 220
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->mNotifyMeetingMainControllerListener:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;

    invoke-interface {p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;->optionsDismiss()V

    .line 222
    :cond_f
    :goto_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/MeetingActivity;

    .line 84
    invoke-virtual {p3}, Lus/zoom/zrc/MeetingActivity;->getMeetingRedPointController()Lus/zoom/zrc/view/MeetingRedPointController;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    .line 85
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p3

    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {p3, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    const/4 p3, 0x1

    .line 87
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->requestWindowFeature(I)V

    .line 88
    sget p3, Lus/zoom/zrcbox/R$layout;->video_layout_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    sget p2, Lus/zoom/zrcbox/R$id;->speakerView_Image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->speakerView_Image:Landroid/widget/ImageView;

    .line 90
    sget p2, Lus/zoom/zrcbox/R$id;->thumbnailView_Image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->thumbnailView_Image:Landroid/widget/ImageView;

    .line 91
    sget p2, Lus/zoom/zrcbox/R$id;->galleryView_Image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    .line 92
    sget p2, Lus/zoom/zrcbox/R$id;->content_only_view_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnly_Image:Landroid/widget/ImageView;

    .line 93
    sget p2, Lus/zoom/zrcbox/R$id;->content_only_view_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnlyViewLayout:Landroid/view/View;

    .line 94
    sget p2, Lus/zoom/zrcbox/R$id;->thumbnailView_Layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->thumbnailViewLayout:Landroid/view/View;

    .line 95
    sget p2, Lus/zoom/zrcbox/R$id;->gallery_view_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryViewLayout:Landroid/view/View;

    .line 97
    sget p2, Lus/zoom/zrcbox/R$id;->iv_change_content_icon_laptop:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentIcon:Landroid/widget/ImageView;

    .line 98
    sget p2, Lus/zoom/zrcbox/R$id;->ll_change_content_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentLayout:Landroid/view/View;

    .line 99
    sget p2, Lus/zoom/zrcbox/R$id;->tv_share_source_count_laptop:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->tvMultiShareCount:Landroid/widget/TextView;

    .line 101
    iget-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->speakerView_Image:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->thumbnailView_Image:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnly_Image:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result p2

    iput-boolean p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isMultiShareBefore:Z

    .line 109
    iget-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareSources()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->shareSourceCount:I

    .line 111
    invoke-direct {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->updateShowingLayout()V

    .line 112
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p2

    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->onUpdateMeetingVideoLayoutUI(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 114
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->speakerView_Image:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 115
    new-instance p3, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$1;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$1;-><init>(Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    const/16 p2, 0x30

    const/16 p3, 0x18

    .line 126
    invoke-virtual {p1, p3, p2, p3, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 148
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareParticipants:I

    if-eq p2, p1, :cond_4

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareSources:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrPinStatusOfScreens:I

    if-ne p2, p1, :cond_1

    .line 153
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->onUpdateMeetingVideoLayoutUI(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 154
    invoke-direct {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->updateShowingLayout()V

    goto :goto_1

    .line 155
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingShareSettings:I

    if-ne p2, p1, :cond_2

    .line 156
    iget-boolean p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isMultiShareBefore:Z

    iget-object p2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result p2

    if-eq p1, p2, :cond_5

    .line 157
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isMultiShareBefore:Z

    .line 158
    invoke-direct {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->updateShowingLayout()V

    .line 159
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->onUpdateMeetingVideoLayoutUI(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    goto :goto_1

    .line 161
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrwPinStatusOfScreen:I

    if-ne p2, p1, :cond_3

    .line 162
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->onUpdateMeetingVideoLayoutUI(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 163
    invoke-direct {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->updateShowingLayout()V

    goto :goto_1

    .line 164
    :cond_3
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->redPointFlag:I

    if-ne p2, p1, :cond_5

    .line 165
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentIcon:Landroid/widget/ImageView;

    sget p2, Lus/zoom/zrcbox/R$drawable;->content_layout_view:I

    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->drawImageViewRed(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 149
    :cond_4
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareSources()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->shareSourceCount:I

    .line 150
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->onUpdateMeetingVideoLayoutUI(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 151
    invoke-direct {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->updateShowingLayout()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 133
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 134
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 136
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ee147ae    # 0.44f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 137
    invoke-virtual {p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 142
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->changeContentIcon:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->content_layout_view:I

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->drawImageViewRed(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public onUpdateMeetingVideoLayoutUI(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 230
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->gallery_view_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->thumbnailView_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->thumbnail_view_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->speakerView_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->speaker_view_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 234
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 235
    iput v2, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->videoLayoutStyle:I

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchWallview()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 244
    :goto_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingVideoStrip()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 245
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->thumbnailView_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->thumbnail_view_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->gallery_view_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->speakerView_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->speaker_view_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->thumbnailView_Image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 249
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->thumbnailView_Image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 p1, 0x3

    .line 250
    iput p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->videoLayoutStyle:I

    goto :goto_1

    .line 252
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->speakerView_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->speaker_view_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->gallery_view_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->thumbnailView_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->thumbnail_view_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->speakerView_Image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 256
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->speakerView_Image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 p1, 0x2

    .line 257
    iput p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->videoLayoutStyle:I

    .line 260
    :goto_1
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isShareOnAllScreensSupported()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 261
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canSwitchShareOnAllScreens()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 262
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnly_Image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 263
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInShareOnAllScreens()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 264
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnly_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->content_layout_view_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->speakerView_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->speaker_view_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->galleryView_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->gallery_view_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x4

    .line 267
    iput p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->videoLayoutStyle:I

    goto :goto_2

    .line 269
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnly_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->content_only_view_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 272
    :cond_5
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnly_Image:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 273
    iget-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->contentOnly_Image:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->content_only_view_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setOptionsDismissListener(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->mNotifyMeetingMainControllerListener:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;

    return-void
.end method

.method setOptionsDismissListener(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->mNotifyMeetingMainControllerListener:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;

    return-void
.end method
