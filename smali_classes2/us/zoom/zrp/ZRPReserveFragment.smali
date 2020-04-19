.class public Lus/zoom/zrp/ZRPReserveFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRPReserveFragment.java"

# interfaces
.implements Lus/zoom/zrp/reserve/ZRPReserveControllerView$OnControllerViewStateChangeListener;
.implements Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;
.implements Lus/zoom/zrp/roomlist/OnRoomClickListener;
.implements Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow$OnLocationSelectListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;,
        Lus/zoom/zrp/ZRPReserveFragment$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_CHECK_IN_TRIGGER_DURATION_SECONDS:I = 0x3c

.field private static final BATCH_LIST_MAX_COUNT:I = 0x14

.field private static final OPERATION_TIMEOUT_SECONDS:I = 0x12c

.field private static final RESERVE_OTHER_ROOM_ANIMATION_DURATION_IN_MILLIS:I = 0x190

.field private static final RESERVING_MEETING_TIMEOUT_SECONDS:I = 0x1e

.field private static final STATE_ATTENDEES:Ljava/lang/String; = "state_attendees"

.field private static final STATE_IS_SELF_ROOM:Ljava/lang/String; = "state_is_self_room"

.field private static final STATE_IS_SHOWING_ROOMS:Ljava/lang/String; = "state_is_showing_rooms"

.field private static final STATE_RESERVE_ROOM_EVENT_TIME:Ljava/lang/String; = "state_reserve_room_event_time"

.field private static final STATE_ROOM_INFO:Ljava/lang/String; = "state_room_info"

.field private static final STATE_SELECTED_LOCATION_TREE_ID:Ljava/lang/String; = "state_selected_location_tree_id"

.field public static final TAG:Ljava/lang/String; = "ZRPReserveFragment"

.field private static final TAG_RESERVE_OTHER_ROOM_SUCCESS:Ljava/lang/String; = "dialog_reserve_other_room_success"

.field private static final ZRPReserveRoomEventResult_Fail:I = 0x3

.field private static final ZRPReserveRoomEventResult_FailByParamsError:I = 0x1

.field private static final ZRPReserveRoomEventResult_FailByRequestError:I = 0x2

.field private static final ZRPReserveRoomEventResult_Success:I


# instance fields
.field private attendeeEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attendeeEmailsAdapter:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

.field private blockForOpeningReserveOtherRoom:Z

.field private bntCancel:Landroid/view/View;

.field private btnMyLocation:Landroid/widget/Button;

.field private btnReserve:Landroid/view/View;

.field private btnReserveAnotherRoom:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private defaultSelectedTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

.field private errorAlertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field private etAttendeeEmail:Landroid/widget/EditText;

.field private etMeetingName:Landroid/widget/EditText;

.field private isSelfRoom:Z

.field private isShowingRooms:Z

.field private ivAttendeeEmailAdd:Landroid/widget/ImageView;

.field private ivMeetingNameEdit:Landroid/widget/ImageView;

.field private ivReserveBack:Landroid/widget/ImageView;

.field private ivReserveLocationArrow:Landroid/widget/ImageView;

.field private keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

.field private lastOperationTime:J

.field private listener:Lus/zoom/zrp/ZRPReserveFragment$Listener;

.field private llReserveAddAttendees:Landroid/widget/LinearLayout;

.field private llReserveLocationNameContainer:Landroid/widget/LinearLayout;

.field private meetingEndMillis:J

.field private meetingStartMillis:J

.field private reserveContentView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private reserveContentViewWidth:I

.field private reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

.field private reserveControllerViewCollapsedWidth:I

.field private reserveControllerViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private reserveControllerViewOriginWidth:I

.field private reserveFragmentRoot:Landroid/view/View;

.field private reserveOtherRoomSuccessDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

.field private reserveOtherRoomsAnimation:Landroid/animation/ValueAnimator;

.field private reserveRoomEventTime:J

.field private reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

.field private reserveRoomsViewLayoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

.field private reserveRoomsViewWidth:I

.field private reserveTitleView:Landroid/view/ViewGroup;

.field private reserveVerticalDividerViewWidth:I

.field private returnSelfRoomAction:Ljava/lang/Runnable;

.field private returnSelfRoomAnimation:Landroid/animation/ValueAnimator;

.field private roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

.field private roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

.field private rvAttendees:Landroidx/recyclerview/widget/RecyclerView;

.field private screenWidth:I

.field private selectLocationPopupWindow:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

.field private selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

.field private selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

.field private selectedTimeText:Ljava/lang/String;

.field private tvReserveLocationName:Landroid/widget/TextView;

.field private tvReserveLocationSelectedTime:Landroid/widget/TextView;

.field private tvReserveRoomName:Landroid/widget/TextView;

.field private tvReserveTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    .line 1733
    new-instance v0, Lus/zoom/zrp/ZRPReserveFragment$16;

    invoke-direct {v0, p0}, Lus/zoom/zrp/ZRPReserveFragment$16;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/ZRPReserveFragment;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onBackKeyPressed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateLastOperationTime()V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrp/ZRPReserveFragment;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmails:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lus/zoom/zrp/ZRPReserveFragment;)Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;
    .locals 0

    .line 87
    iget-object p0, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmailsAdapter:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveOtherRoomAnimationStart()V

    return-void
.end method

.method static synthetic access$1400(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveOtherRoomAnimationEnd()V

    return-void
.end method

.method static synthetic access$1500(Lus/zoom/zrp/ZRPReserveFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveOtherRoomAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$1600(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onReturnSelfRoomAnimationStart()V

    return-void
.end method

.method static synthetic access$1700(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onReturnSelfRoomAnimationEnd()V

    return-void
.end method

.method static synthetic access$1800(Lus/zoom/zrp/ZRPReserveFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->onReturnSelfRoomAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$1902(Lus/zoom/zrp/ZRPReserveFragment;J)J
    .locals 0

    .line 87
    iput-wide p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomEventTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lus/zoom/zrp/ZRPReserveFragment;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    return p0
.end method

.method static synthetic access$2000(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->exit()V

    return-void
.end method

.method static synthetic access$2100(Lus/zoom/zrp/ZRPReserveFragment;)Lus/zoom/zrp/ZRPReserveFragment;
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getSelfReserveFragment()Lus/zoom/zrp/ZRPReserveFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->startReturnSelfRoomAnimation()V

    return-void
.end method

.method static synthetic access$2300(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 87
    iget-object p0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomsAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2400(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 87
    iget-object p0, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2500(Lus/zoom/zrp/ZRPReserveFragment;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lus/zoom/zrp/ZRPReserveFragment;->blockForOpeningReserveOtherRoom:Z

    return p0
.end method

.method static synthetic access$300(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dispatchUserActiveToReserveCurrentRoomUI()V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateAttendeeEmailViewsWidth()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->checkToCloseKeyboard()V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 87
    iget-object p0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivMeetingNameEdit:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/EditText;
    .locals 0

    .line 87
    iget-object p0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 87
    iget-object p0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivAttendeeEmailAdd:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/EditText;
    .locals 0

    .line 87
    iget-object p0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    return-object p0
.end method

.method private activateEditText(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x1

    .line 1227
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1228
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1229
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1230
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private canCurrentSelectLocation()Z
    .locals 3

    .line 1110
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    .line 1111
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1115
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getRoomParentLocationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->findLocationByID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getReserveOtherRoomInLocation()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private canJumpToMyLocation()Z
    .locals 2

    .line 1120
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1124
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomParentLocationInfo()Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->isFloorWithMap()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private checkToCloseKeyboard()V
    .locals 2

    .line 567
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->isKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 571
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private dispatchUserActiveToReserveCurrentRoomUI()V
    .locals 3

    .line 325
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getSelfReserveFragment()Lus/zoom/zrp/ZRPReserveFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lus/zoom/zrp/ZRPReserveFragment;->lastOperationTime:J

    :cond_0
    return-void
.end method

.method private exit()V
    .locals 2

    .line 1234
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismiss()V

    .line 1238
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->errorAlertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->errorAlertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    .line 1242
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomSuccessDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1243
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomSuccessDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dismissAllowingStateLoss()V

    .line 1246
    :cond_2
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-nez v0, :cond_3

    .line 1247
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getSelfReserveFragment()Lus/zoom/zrp/ZRPReserveFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 1249
    iput-boolean v1, v0, Lus/zoom/zrp/ZRPReserveFragment;->blockForOpeningReserveOtherRoom:Z

    .line 1253
    :cond_3
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->listener:Lus/zoom/zrp/ZRPReserveFragment$Listener;

    if-eqz v0, :cond_4

    .line 1254
    invoke-interface {v0}, Lus/zoom/zrp/ZRPReserveFragment$Listener;->onExitReserveFragment()V

    :cond_4
    return-void
.end method

.method private getSelfReserveFragment()Lus/zoom/zrp/ZRPReserveFragment;
    .locals 2

    .line 334
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 335
    instance-of v1, v0, Lus/zoom/zrc/ZRCActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 339
    :cond_0
    check-cast v0, Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    .line 340
    const-class v1, Lus/zoom/zrp/ZRPReserveFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/ZRPReserveFragment;

    return-object v0
.end method

.method private initAddAttendeesViews()V
    .locals 3

    .line 423
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsCalendarAddAttendees()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveAddAttendees:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->rvAttendees:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 428
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->rvAttendees:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 429
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->rvAttendees:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollbarFadingEnabled(Z)V

    .line 430
    new-instance v0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmailsAdapter:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    .line 431
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmailsAdapter:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    new-instance v1, Lus/zoom/zrp/ZRPReserveFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPReserveFragment$3;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->setOnAttendeeEmailDeleteListener(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$OnAttendeeEmailDeleteListener;)V

    .line 437
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmails:Ljava/util/List;

    if-nez v0, :cond_1

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmails:Ljava/util/List;

    .line 440
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmailsAdapter:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmails:Ljava/util/List;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->setAttendeeEmails(Ljava/util/List;)V

    .line 441
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->rvAttendees:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmailsAdapter:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 442
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 443
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateAttendeeEmailViewsWidth()V

    :cond_2
    return-void
.end method

.method private initCalcViewsWidth()V
    .locals 3

    .line 381
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->screenWidth:I

    .line 382
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_divider_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveVerticalDividerViewWidth:I

    .line 384
    iget v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->screenWidth:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x9

    iput v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewOriginWidth:I

    .line 385
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_controller_left_part_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 386
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_controller_right_part_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_controller_collapsed_mid_part_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewCollapsedWidth:I

    .line 389
    iget v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->screenWidth:I

    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewOriginWidth:I

    sub-int v1, v0, v1

    iget v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveVerticalDividerViewWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveContentViewWidth:I

    .line 390
    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewCollapsedWidth:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    iput v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsViewWidth:I

    return-void
.end method

.method private initClickListeners()V
    .locals 1

    .line 497
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivMeetingNameEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivAttendeeEmailAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserve:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->bntCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v0, p0}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->setOnRoomClickListener(Lus/zoom/zrp/roomlist/OnRoomClickListener;)V

    return-void
.end method

.method private initEditTextViewsEvents()V
    .locals 2

    .line 578
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->setKeyboardListener(Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;)V

    .line 580
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveFragmentRoot:Landroid/view/View;

    new-instance v1, Lus/zoom/zrp/ZRPReserveFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPReserveFragment$4;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 589
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrp/ZRPReserveFragment$5;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPReserveFragment$5;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 604
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrp/ZRPReserveFragment$6;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPReserveFragment$6;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 632
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrp/ZRPReserveFragment$7;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPReserveFragment$7;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 641
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrp/ZRPReserveFragment$8;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPReserveFragment$8;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 652
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrp/ZRPReserveFragment$9;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPReserveFragment$9;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private initFields()V
    .locals 1

    .line 377
    new-instance v0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-direct {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    return-void
.end method

.method private initFindViews(Landroid/view/View;)V
    .locals 1

    .line 394
    sget v0, Lus/zoom/zrcbox/R$id;->reserve_fragment_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveFragmentRoot:Landroid/view/View;

    .line 395
    sget v0, Lus/zoom/zrcbox/R$id;->kd_reserve_keyboard_detector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    .line 397
    sget v0, Lus/zoom/zrcbox/R$id;->cl_reserve_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveTitleView:Landroid/view/ViewGroup;

    .line 398
    sget v0, Lus/zoom/zrcbox/R$id;->cl_reserve_controller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    .line 399
    sget v0, Lus/zoom/zrcbox/R$id;->cl_reserve_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveContentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 400
    sget v0, Lus/zoom/zrcbox/R$id;->fl_reserve_rooms:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    .line 402
    sget v0, Lus/zoom/zrcbox/R$id;->iv_reserve_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    .line 403
    sget v0, Lus/zoom/zrcbox/R$id;->tv_reserve_room_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    .line 404
    sget v0, Lus/zoom/zrcbox/R$id;->ll_reserve_location_name_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    .line 405
    sget v0, Lus/zoom/zrcbox/R$id;->tv_reserve_location_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveLocationName:Landroid/widget/TextView;

    .line 406
    sget v0, Lus/zoom/zrcbox/R$id;->tv_reserve_location_selected_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveLocationSelectedTime:Landroid/widget/TextView;

    .line 407
    sget v0, Lus/zoom/zrcbox/R$id;->iv_reserve_location_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveLocationArrow:Landroid/widget/ImageView;

    .line 408
    sget v0, Lus/zoom/zrcbox/R$id;->btn_reserve_other_rooms:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    .line 409
    sget v0, Lus/zoom/zrcbox/R$id;->btn_my_location:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    .line 411
    sget v0, Lus/zoom/zrcbox/R$id;->tv_reserve_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveTime:Landroid/widget/TextView;

    .line 412
    sget v0, Lus/zoom/zrcbox/R$id;->et_reserve_meeting_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    .line 413
    sget v0, Lus/zoom/zrcbox/R$id;->iv_reserve_edit_meeting_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivMeetingNameEdit:Landroid/widget/ImageView;

    .line 414
    sget v0, Lus/zoom/zrcbox/R$id;->ll_reserve_add_invitee:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveAddAttendees:Landroid/widget/LinearLayout;

    .line 415
    sget v0, Lus/zoom/zrcbox/R$id;->et_invitee_email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    .line 416
    sget v0, Lus/zoom/zrcbox/R$id;->iv_invitee_add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivAttendeeEmailAdd:Landroid/widget/ImageView;

    .line 417
    sget v0, Lus/zoom/zrcbox/R$id;->rv_invitees:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->rvAttendees:Landroidx/recyclerview/widget/RecyclerView;

    .line 418
    sget v0, Lus/zoom/zrcbox/R$id;->btn_reserve:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserve:Landroid/view/View;

    .line 419
    sget v0, Lus/zoom/zrcbox/R$id;->btn_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->bntCancel:Landroid/view/View;

    return-void
.end method

.method private initOtherRoomUIState()V
    .locals 3

    .line 670
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 673
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 674
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initReserveOtherRoomSuccessDialog()V
    .locals 3

    .line 1546
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-string v1, "dialog_reserve_other_room_success"

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomSuccessDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    .line 1547
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomSuccessDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    if-nez v0, :cond_0

    .line 1548
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomSuccessDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    .line 1550
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomSuccessDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrp/ZRPReserveFragment$15;

    invoke-direct {v2, p0}, Lus/zoom/zrp/ZRPReserveFragment$15;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private initReserveOtherRooms()V
    .locals 3

    .line 962
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 963
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 968
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 970
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getRoomParentLocationID()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 972
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->requestRoomParentLocationID()V

    return-void

    .line 976
    :cond_1
    iget-object v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-nez v2, :cond_2

    .line 977
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->findLocationByID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 980
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomParentLocationInfo()Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 981
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 986
    :cond_3
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    if-nez v1, :cond_4

    .line 987
    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    .line 989
    :cond_4
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsDataBasedOnLocationInfo()V

    .line 990
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsUI()V

    goto :goto_1

    .line 982
    :cond_5
    :goto_0
    invoke-direct {p0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->requestLocationInfoByID(Ljava/lang/String;)V

    return-void

    .line 993
    :cond_6
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAllRoomListItemDetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 994
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isAllRoomsExpired()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 999
    :cond_7
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsDataBasedOnAllRooms()V

    .line 1000
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsUI()V

    :goto_1
    return-void

    .line 995
    :cond_8
    :goto_2
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->requestAllRooms()V

    return-void

    .line 964
    :cond_9
    :goto_3
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->requestAccountLocationTree()V

    return-void
.end method

.method private initReserveOtherRoomsAnimation()V
    .locals 3

    .line 733
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomsAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 737
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomsAnimation:Landroid/animation/ValueAnimator;

    .line 738
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomsAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 740
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomsAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lus/zoom/zrp/ZRPReserveFragment$10;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPReserveFragment$10;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 758
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomsAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lus/zoom/zrp/ZRPReserveFragment$11;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPReserveFragment$11;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initReturnSelfRoomAnimation()V
    .locals 3

    .line 767
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 771
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAnimation:Landroid/animation/ValueAnimator;

    .line 772
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 774
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lus/zoom/zrp/ZRPReserveFragment$12;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPReserveFragment$12;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 792
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lus/zoom/zrp/ZRPReserveFragment$13;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPReserveFragment$13;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initRoomNameViewContent()V
    .locals 2

    .line 489
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v1}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private initSelfRoomReserveOthersDisabledUIState()V
    .locals 3

    .line 678
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 681
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private initSelfRoomReserveOthersEnabledUIState()V
    .locals 3

    .line 686
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 689
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private initSetupControllerView()V
    .locals 5

    .line 665
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {v0, p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->setOnControllerViewStateChangeListener(Lus/zoom/zrp/reserve/ZRPReserveControllerView$OnControllerViewStateChangeListener;)V

    .line 666
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    iget-boolean v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    iget-object v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    iget-object v3, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveTime:Landroid/widget/TextView;

    iget-object v4, p0, Lus/zoom/zrp/ZRPReserveFragment;->defaultSelectedTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v0, v1, v2, v3, v4}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->initSetup(ZLus/zoom/zrp/model/ZRPRoomInfo;Landroid/widget/TextView;Lus/zoom/zrp/reserve/ZRPTimeBlock;)V

    return-void
.end method

.method private initShowingState()V
    .locals 5

    .line 694
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 696
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAlpha(F)V

    .line 698
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 699
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 701
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewCollapsedWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 708
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsViewLayoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveVerticalDividerViewWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 709
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v1, v0}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomsAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 712
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 714
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 715
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 717
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 718
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 720
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewOriginWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 727
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsViewLayoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->screenWidth:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 728
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v1, v0}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private initViewsLayout()V
    .locals 7

    .line 448
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 449
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveContentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v1}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsViewLayoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 452
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewOriginWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 453
    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveContentViewWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 454
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsViewLayoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsViewWidth:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 455
    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->screenWidth:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 457
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 458
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivMeetingNameEdit:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 460
    iget-object v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 461
    iget-object v3, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivAttendeeEmailAdd:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 463
    iget v4, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveContentViewWidth:I

    .line 464
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_content_horizontal_reserved_space:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v0

    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v0

    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v0

    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v4, v0

    .line 471
    iget v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveContentViewWidth:I

    .line 472
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_content_horizontal_reserved_space:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v0, v1

    .line 479
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 480
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 482
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivMeetingNameEdit:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->matchImageViewToTextSize(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 483
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivAttendeeEmailAdd:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->matchImageViewToTextSize(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 485
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onBackKeyPressed()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->startReturnSelfRoomAnimation()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onCancelClicked()V
    .locals 0

    .line 551
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->exit()V

    .line 552
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->cancelReserveByClickButton()V

    return-void
.end method

.method private onListCalendarEventsWithRoomResult(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1510
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateCachedReservableRoomsMeetingList()V

    .line 1511
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getUncachedRoomIDs()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->requestUncachedRoomMeetings(Ljava/util/List;)V

    .line 1512
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateReservableRoomsAvailability()V

    .line 1513
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {p1, v0}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->updateRoomsMeetings(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    :cond_0
    return-void
.end method

.method private onMyLocationClicked()V
    .locals 2

    .line 1708
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getRoomParentLocationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->findLocationByID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    .line 1709
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1710
    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->onSwitchLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 1713
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v0}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->showMyLocation()V

    .line 1715
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lus/zoom/zrcbox/R$string;->my_location:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1717
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-static {v1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private onPrivateMeetingOptionChanged()V
    .locals 0

    return-void
.end method

.method private onReserveAnotherClicked()V
    .locals 1

    .line 537
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->checkToCloseKeyboard()V

    .line 538
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 539
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->reserveAnotherRoom()V

    return-void
.end method

.method private onReserveBackClicked()V
    .locals 1

    .line 543
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->startReturnSelfRoomAnimation()V

    goto :goto_0

    .line 546
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->exit()V

    :goto_0
    return-void
.end method

.method private onReserveClicked()V
    .locals 8

    .line 1447
    iget-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->meetingStartMillis:J

    invoke-static {v0, v1}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedMeetingTime(J)Ljava/lang/String;

    move-result-object v0

    .line 1448
    iget-wide v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->meetingEndMillis:J

    invoke-static {v1, v2}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedMeetingTime(J)Ljava/lang/String;

    move-result-object v1

    .line 1449
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7

    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 1452
    :cond_0
    new-instance v2, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-direct {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;-><init>()V

    const/4 v4, 0x0

    .line 1453
    invoke-virtual {v2, v4}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setPrivate(Z)V

    .line 1454
    iget-object v5, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1455
    invoke-static {v5}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget v5, Lus/zoom/zrcbox/R$string;->default_meeting_topic:I

    invoke-virtual {p0, v5}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v2, v5}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setMeetingName(Ljava/lang/String;)V

    const-string v5, ""

    .line 1456
    invoke-virtual {v2, v5}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setMeetingNumber(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setScheduledFrom(I)V

    .line 1458
    invoke-virtual {v2, v0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setStartTime(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {v2, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setEndTime(Ljava/lang/String;)V

    .line 1460
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setLocation(Ljava/lang/String;)V

    .line 1461
    iget-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->meetingStartMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    const-wide/32 v5, 0xea60

    cmp-long v7, v0, v5

    if-gtz v7, :cond_2

    const-string v0, "1"

    .line 1462
    invoke-virtual {v2, v0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setCheckInStatus(Ljava/lang/String;)V

    .line 1465
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setScheduledBy(Ljava/lang/String;)V

    .line 1466
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmails:Ljava/util/List;

    invoke-virtual {v2, v0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setAttendees(Ljava/util/List;)V

    .line 1470
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz v0, :cond_3

    .line 1471
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->scheduleCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    goto :goto_1

    .line 1473
    :cond_3
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomType()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 1474
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v1}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/model/Model;->scheduleCalendarEventWithRoom(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_6

    .line 1478
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 1479
    invoke-direct {p0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveRoomFailed(I)V

    goto :goto_3

    .line 1481
    :cond_5
    invoke-direct {p0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveOtherRoomFailed(I)V

    goto :goto_3

    .line 1484
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomEventTime:J

    .line 1485
    sget v0, Lus/zoom/zrcbox/R$string;->reserving_room:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    .line 1487
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmails:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lus/zoom/zrp/util/ZRPUsageTrace;->scheduleMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;ZLjava/util/List;)V

    goto :goto_3

    .line 1450
    :cond_7
    :goto_2
    invoke-direct {p0, v3}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveRoomFailed(I)V

    :goto_3
    return-void
.end method

.method private onReserveOtherRoomAnimationEnd()V
    .locals 4

    const/4 v0, 0x1

    .line 830
    iput-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    .line 832
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 833
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 835
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 836
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 838
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 839
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 840
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 842
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveContentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 843
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v1, v2}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->setVisibility(I)V

    .line 844
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v1}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->onSlideInScreen()V

    .line 846
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomsAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 848
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {v1, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onReserveModeSwitched(Z)V

    .line 850
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initReserveOtherRooms()V

    .line 852
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateAccessibility()V

    return-void
.end method

.method private onReserveOtherRoomAnimationStart()V
    .locals 3

    .line 807
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 808
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 810
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 811
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 812
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 814
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 822
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 823
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 825
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveContentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->setVisibility(I)V

    return-void
.end method

.method private onReserveOtherRoomAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 856
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 858
    iget v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->screenWidth:I

    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveVerticalDividerViewWidth:I

    sub-int v2, v0, v1

    iget v3, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewCollapsedWidth:I

    sub-int/2addr v0, v1

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v0, v0, p1

    .line 859
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v2, v0

    .line 861
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewOriginWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 862
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsViewLayoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveVerticalDividerViewWidth:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 863
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v1, v0}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    float-to-double v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_0

    .line 866
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    mul-float p1, p1, v3

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 867
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    .line 869
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    mul-float p1, p1, v3

    sub-float/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 870
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 871
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private onReserveOtherRoomFailed(I)V
    .locals 5

    .line 1588
    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_reserve_other_room:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1590
    sget v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CALENDAR_SCHEDULE_OVERBOOK_NOT_ALLOWED:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    const-string p1, "List calendar events with room because of over book"

    .line 1591
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1593
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomID()Ljava/lang/String;

    move-result-object v0

    .line 1594
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->startOfDay()J

    move-result-wide v3

    invoke-static {v3, v4}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedMeetingTime(J)Ljava/lang/String;

    move-result-object v1

    .line 1595
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->endOfDay()J

    move-result-wide v3

    invoke-static {v3, v4}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedMeetingTime(J)Ljava/lang/String;

    move-result-object v3

    .line 1593
    invoke-virtual {p1, v0, v1, v3}, Lus/zoom/zrc/model/Model;->listCalendarEventsWithRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1597
    sget p1, Lus/zoom/zrcbox/R$string;->failed_to_reserve_other_room_time_conflict:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x454

    if-eq p1, v1, :cond_1

    const/16 v1, 0x455

    if-eq p1, v1, :cond_1

    const/16 v1, 0x456

    if-ne p1, v1, :cond_2

    .line 1599
    :cond_1
    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_reserve_other_room_with_error:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1602
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onReserveOtherRoomInLocationLevelChanged()V
    .locals 4

    .line 1618
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    if-nez v0, :cond_1

    .line 1619
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->canReserveOtherRoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1620
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initSelfRoomReserveOthersDisabledUIState()V

    goto :goto_0

    .line 1622
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initSelfRoomReserveOthersEnabledUIState()V

    .line 1624
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initReserveOtherRoomsAnimation()V

    .line 1625
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initReturnSelfRoomAnimation()V

    goto :goto_0

    .line 1628
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->canReserveOtherRoom()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1629
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->startReturnSelfRoomAnimation()V

    goto :goto_0

    .line 1631
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initReserveOtherRoomsAnimation()V

    .line 1632
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initReturnSelfRoomAnimation()V

    .line 1635
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getRoomParentLocationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->findLocationByID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1637
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1638
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getReserveOtherRoomInLocation()I

    move-result v1

    .line 1639
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getHighestAncientNodeUnderType(I)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v2

    .line 1640
    iget-object v3, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {v3, v1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getHighestAncientNodeUnderType(I)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_4

    .line 1643
    :cond_3
    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->onSwitchLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 1647
    :cond_4
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateLocationsUI()V

    .line 1649
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectLocationPopupWindow:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-eqz v0, :cond_5

    .line 1650
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectLocationPopupWindow:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

    invoke-virtual {v1, v0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->updateLocationTrees(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onReserveOtherRoomSuccess()V
    .locals 5

    .line 1536
    iget-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomEventTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1539
    :cond_0
    iput-wide v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomEventTime:J

    .line 1540
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    const-string v0, ""

    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reserve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v2}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1542
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->showReserveOtherRoomSuccessDialog()V

    return-void
.end method

.method private onReserveRoomFailed(I)V
    .locals 2

    .line 1570
    sget p1, Lus/zoom/zrcbox/R$string;->failed_to_reserve_room:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1582
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1584
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->scheduleMeetingFailed()V

    return-void
.end method

.method private onReserveRoomResult(I)V
    .locals 5

    .line 1522
    iget-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomEventTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1525
    :cond_0
    iput-wide v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomEventTime:J

    .line 1526
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    if-nez p1, :cond_1

    const-string p1, ""

    const-string v0, "reserve room success"

    const/4 v1, 0x0

    .line 1528
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1529
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->exit()V

    goto :goto_0

    .line 1531
    :cond_1
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveRoomFailed(I)V

    :goto_0
    return-void
.end method

.method private onReturnSelfRoomAnimationEnd()V
    .locals 4

    const/4 v0, 0x0

    .line 903
    iput-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    .line 905
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->resetReserveOtherRooms()V

    .line 907
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 909
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->canReserveOtherRoom()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 912
    :cond_0
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 915
    :goto_0
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 916
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 917
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 919
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 920
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 921
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 923
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveContentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 924
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->setVisibility(I)V

    .line 925
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v1}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->onSlideOutScreen()V

    .line 927
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 929
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {v1, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onReserveModeSwitched(Z)V

    .line 931
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateAccessibility()V

    return-void
.end method

.method private onReturnSelfRoomAnimationStart()V
    .locals 3

    .line 876
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 877
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 879
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 880
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 881
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 883
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 885
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->canReserveOtherRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 888
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 891
    :goto_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 895
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 896
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 898
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveContentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->setVisibility(I)V

    return-void
.end method

.method private onReturnSelfRoomAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 935
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 937
    iget v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewCollapsedWidth:I

    iget v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->screenWidth:I

    iget v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveVerticalDividerViewWidth:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    .line 938
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 939
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerViewOriginWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 941
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsViewLayoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveVerticalDividerViewWidth:I

    add-int/2addr v0, v2

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 942
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    float-to-double v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_0

    .line 945
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    mul-float p1, p1, v3

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 946
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 947
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    .line 949
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveRoomName:Landroid/widget/TextView;

    mul-float p1, p1, v3

    sub-float/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 950
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private onSwitchLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 2

    .line 1722
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->findLocationInfoInCachedListByLocationID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1723
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1726
    :cond_0
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 1727
    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    .line 1728
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsDataBasedOnLocationInfo()V

    .line 1729
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsUI()V

    goto :goto_1

    .line 1724
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->requestLocationInfoByID(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private onTimerForCheckOperationTimeout()V
    .locals 5

    .line 1439
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->isKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateLastOperationTime()V

    goto :goto_0

    .line 1441
    :cond_0
    iget-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->lastOperationTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->lastOperationTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 1442
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->exit()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onTimerForCheckReservingMeetingTimeout()V
    .locals 5

    .line 1424
    iget-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomEventTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomEventTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1426
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    const-string v1, "onTimerForCheckReservingMeetingTimeout"

    new-instance v2, Lus/zoom/zrp/ZRPReserveFragment$14;

    invoke-direct {v2, p0}, Lus/zoom/zrp/ZRPReserveFragment$14;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/androidlib/util/EventTaskManager;->push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    const/4 v0, 0x3

    .line 1433
    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveRoomFailed(I)V

    .line 1434
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->cancelReserveByTimeOut()V

    :cond_0
    return-void
.end method

.method private onUpdateMeetingList()V
    .locals 0

    return-void
.end method

.method private requestAccountLocationTree()V
    .locals 3

    .line 1005
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->requestZoomPresenceLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    const/4 v0, 0x1

    .line 1008
    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_get_location:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(ZI[Ljava/lang/Object;)V

    goto :goto_0

    .line 1010
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->showWaitingDialog()V

    :goto_0
    return-void
.end method

.method private requestAllRooms()V
    .locals 3

    .line 1037
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->requestAllRooms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    const/4 v0, 0x1

    .line 1040
    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_get_list_of_rooms:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(ZI[Ljava/lang/Object;)V

    goto :goto_0

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->showWaitingDialog()V

    :goto_0
    return-void
.end method

.method private requestLocationInfoByID(Ljava/lang/String;)V
    .locals 3

    .line 1025
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->requestLocationInfoByID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    .line 1028
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->findLocationByID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1029
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object p1

    .line 1030
    :goto_0
    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_get_location_information:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v2, v0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(ZI[Ljava/lang/Object;)V

    goto :goto_1

    .line 1032
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->showWaitingDialog()V

    :goto_1
    return-void
.end method

.method private requestRoomParentLocationID()V
    .locals 3

    .line 1015
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->requestRoomParentLocationID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    const/4 v0, 0x1

    .line 1018
    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_determine_location_of_this_room:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(ZI[Ljava/lang/Object;)V

    goto :goto_0

    .line 1020
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->showWaitingDialog()V

    :goto_0
    return-void
.end method

.method private requestUncachedRoomMeetings(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1180
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1185
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1188
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 1191
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    .line 1193
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->startOfDay()J

    move-result-wide v1

    invoke-static {v1, v2}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedMeetingTime(J)Ljava/lang/String;

    move-result-object v1

    .line 1194
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->endOfDay()J

    move-result-wide v2

    invoke-static {v2, v3}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedMeetingTime(J)Ljava/lang/String;

    move-result-object v2

    .line 1191
    invoke-virtual {v0, p1, v1, v2}, Lus/zoom/zrc/model/Model;->batchListCalendarEventsWithRooms(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private resetReserveOtherRooms()V
    .locals 4

    .line 1129
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->errorAlertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->errorAlertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    .line 1133
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectLocationPopupWindow:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

    if-eqz v0, :cond_1

    .line 1134
    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->reset()V

    .line 1137
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1139
    iput-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 1140
    iput-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    return-void

    .line 1144
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1145
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getRoomParentLocationID()Ljava/lang/String;

    move-result-object v2

    .line 1146
    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1147
    iput-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 1148
    iput-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    return-void

    .line 1152
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getRoomParentLocationInfo()Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1154
    iput-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 1155
    iput-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    return-void

    .line 1159
    :cond_4
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->findLocationByID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 1160
    iput-object v3, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    .line 1161
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->parseRoomsBasedOnLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V

    .line 1162
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateCachedReservableRoomsMeetingList()V

    .line 1163
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateReservableRoomsAvailability()V

    .line 1164
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsUI()V

    goto :goto_0

    .line 1166
    :cond_5
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAllRoomListItemDetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 1171
    :cond_6
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getAllRoomListItemDetails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->parseRoomsBasedOnRoomListItemDetails(Ljava/util/List;)V

    .line 1172
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateCachedReservableRoomsMeetingList()V

    .line 1173
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateReservableRoomsAvailability()V

    .line 1174
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsUI()V

    :goto_0
    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method private restoreSavedInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    const-string v0, "state_reserve_room_event_time"

    .line 354
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomEventTime:J

    const-string v0, "state_is_showing_rooms"

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    const-string v0, "state_is_self_room"

    .line 356
    iget-boolean v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    const-string v0, "state_room_info"

    .line 357
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/model/ZRPRoomInfo;

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    const-string v0, "state_selected_location_tree_id"

    const/4 v1, 0x0

    .line 359
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->findLocationByID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 365
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/Model;->findLocationInfoInCachedListByLocationID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    :cond_1
    const-string v0, "state_attendees"

    .line 368
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmails:Ljava/util/List;

    :cond_2
    return-void
.end method

.method private setDefaultSelectedTimeBlock(Lus/zoom/zrp/reserve/ZRPTimeBlock;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->defaultSelectedTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    return-void
.end method

.method private varargs showErrorAlertDialog(Ljava/lang/Runnable;I[Ljava/lang/Object;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1749
    invoke-virtual {p0, p2, p3}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private showErrorAlertDialog(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1753
    new-instance v0, Lus/zoom/zrp/ZRPReserveFragment$17;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrp/ZRPReserveFragment$17;-><init>(Lus/zoom/zrp/ZRPReserveFragment;Ljava/lang/Runnable;)V

    .line 1760
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->errorAlertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1761
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->errorAlertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1762
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->errorAlertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    const/4 p2, -0x1

    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1764
    :cond_0
    new-instance p1, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1765
    invoke-virtual {p1, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 1766
    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 1767
    sget p2, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p1, p2, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    const/4 p2, 0x0

    .line 1768
    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setCancelable(Z)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 1769
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->errorAlertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 1770
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->errorAlertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private varargs showErrorAlertDialog(ZI[Ljava/lang/Object;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1741
    invoke-virtual {p0, p2, p3}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(ZLjava/lang/String;)V

    return-void
.end method

.method private showErrorAlertDialog(ZLjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1745
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAction:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private showReserveOtherRoomSuccessDialog()V
    .locals 6

    .line 1564
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomSuccessDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    sget v1, Lus/zoom/zrcbox/R$string;->reserve_other_room_result:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v3}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedTimeText:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomSuccessDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-virtual {v0, v4}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setCancelable(Z)V

    .line 1566
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveOtherRoomSuccessDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_reserve_other_room_success"

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSelectLocationPopupWindow()V
    .locals 4

    .line 556
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectLocationPopupWindow:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectLocationPopupWindow:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

    .line 558
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectLocationPopupWindow:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

    invoke-virtual {v0, p0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->setOnLocationSelectListener(Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow$OnLocationSelectListener;)V

    .line 560
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectLocationPopupWindow:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->updateLocationTrees(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 562
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveTitleView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->select_floor_popup_top_margin_to_title_bar_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectLocationPopupWindow:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

    iget-object v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtBottomWithWrapHeight(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    return-void
.end method

.method private startReturnSelfRoomAnimation()V
    .locals 1

    .line 801
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->returnSelfRoomAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private updateAccessibility()V
    .locals 1

    .line 955
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    iget-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->getReserveViewArea()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private updateAttendeeEmailViewsWidth()V
    .locals 8

    .line 1199
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1200
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1201
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1203
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_invitee_name_text_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 1204
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1205
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v1, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1206
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1208
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 1212
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_content_edit_text_left_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 1213
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_edit_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 1214
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_content_text_icon_gap_attendee_item:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 1215
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_attendee_delete_right_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 1216
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_attendee_item_reserved_space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 1218
    iget v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveContentViewWidth:I

    .line 1219
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_content_horizontal_reserved_space:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1218
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1221
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->rvAttendees:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1222
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1223
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->rvAttendees:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLastOperationTime()V
    .locals 2

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->lastOperationTime:J

    return-void
.end method

.method private updateLocationsUI()V
    .locals 3

    .line 1094
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->canCurrentSelectLocation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveLocationArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0

    .line 1100
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveLocationArrow:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1102
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectLocationPopupWindow:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectLocationPopupWindow:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateMyLocationButton()V
    .locals 2

    .line 1090
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->canJumpToMyLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private updateReserveOtherRoomsDataBasedOnAllRooms()V
    .locals 2

    .line 1054
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getAllRoomListItemDetails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->parseRoomsBasedOnRoomListItemDetails(Ljava/util/List;)V

    .line 1055
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateCachedReservableRoomsMeetingList()V

    .line 1056
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getUncachedRoomIDs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->requestUncachedRoomMeetings(Ljava/util/List;)V

    .line 1057
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateReservableRoomsAvailability()V

    return-void
.end method

.method private updateReserveOtherRoomsDataBasedOnLocationInfo()V
    .locals 2

    .line 1047
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->parseRoomsBasedOnLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V

    .line 1048
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateCachedReservableRoomsMeetingList()V

    .line 1049
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getUncachedRoomIDs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->requestUncachedRoomMeetings(Ljava/util/List;)V

    .line 1050
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateReservableRoomsAvailability()V

    return-void
.end method

.method private updateReserveOtherRoomsUI()V
    .locals 0

    .line 1061
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateRoomsViews()V

    .line 1062
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateTitleBarLocationName()V

    .line 1063
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateTitleBarTime()V

    .line 1064
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateMyLocationButton()V

    .line 1065
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateLocationsUI()V

    return-void
.end method

.method private updateRoomsViews()V
    .locals 2

    .line 1069
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->updateRoomList(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    return-void
.end method

.method private updateTitleBarLocationName()V
    .locals 2

    .line 1073
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveLocationName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1076
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveLocationName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateTitleBarTime()V
    .locals 5

    .line 1081
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveLocationSelectedTime:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->reserve_other_room_selected_time:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedTimeText:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1085
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveLocationSelectedTime:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedTimeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getTheme()I
    .locals 1

    .line 204
    sget v0, Lus/zoom/zrcbox/R$style;->ZRPTheme_Reserve:I

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 209
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 211
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1260
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 1261
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->exit()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 513
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserveAnotherRoom:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 514
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveAnotherClicked()V

    goto :goto_0

    .line 515
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnMyLocation:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 516
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onMyLocationClicked()V

    goto :goto_0

    .line 517
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivReserveBack:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 518
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveBackClicked()V

    goto :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    if-ne p1, v0, :cond_3

    .line 520
    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->activateEditText(Landroid/widget/EditText;)V

    goto :goto_0

    .line 521
    :cond_3
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivMeetingNameEdit:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 522
    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->activateEditText(Landroid/widget/EditText;)V

    goto :goto_0

    .line 523
    :cond_4
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    if-ne p1, v0, :cond_5

    .line 524
    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->activateEditText(Landroid/widget/EditText;)V

    goto :goto_0

    .line 525
    :cond_5
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->ivAttendeeEmailAdd:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_6

    .line 526
    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->activateEditText(Landroid/widget/EditText;)V

    goto :goto_0

    .line 527
    :cond_6
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserve:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 528
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveClicked()V

    goto :goto_0

    .line 529
    :cond_7
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->bntCancel:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 530
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onCancelClicked()V

    goto :goto_0

    .line 531
    :cond_8
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->llReserveLocationNameContainer:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_9

    .line 532
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->showSelectLocationPopupWindow()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 216
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->initDisableWindowStateChangedAccessibilityEvent(Z)V

    .line 218
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 219
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 221
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->restoreSavedInstanceState(Landroid/os/Bundle;)V

    .line 223
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initReserveOtherRoomSuccessDialog()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 291
    new-instance p1, Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;

    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;-><init>(Lus/zoom/zrp/ZRPReserveFragment;Landroid/content/Context;I)V

    .line 292
    new-instance v0, Lus/zoom/zrp/ZRPReserveFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrp/ZRPReserveFragment$1;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 304
    new-instance v0, Lus/zoom/zrp/ZRPReserveFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrp/ZRPReserveFragment$2;-><init>(Lus/zoom/zrp/ZRPReserveFragment;)V

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCDialog;->setUserActiveOnUIListener(Lus/zoom/zrc/base/app/ZRCDialog$UserActiveOnUIListener;)V

    .line 313
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    iget-boolean v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz v1, :cond_0

    .line 316
    sget v1, Lus/zoom/zrcbox/R$style;->ZRPReserveWindowAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0

    .line 318
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$style;->ZRPReserveOtherRoomWindowAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    .line 229
    sget p3, Lus/zoom/zrcbox/R$layout;->zrp_reserve_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 278
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroyView()V

    .line 280
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onFragmentDestroyView()V

    return-void
.end method

.method public onKeyboardClosed()V
    .locals 2

    .line 1271
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1272
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1273
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etMeetingName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1275
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1276
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1277
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->etAttendeeEmail:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public onKeyboardOpen()V
    .locals 0

    return-void
.end method

.method public onLocationSelect(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0

    .line 1704
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->onSwitchLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 4

    .line 1300
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 1301
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ScheduleCalendarResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_0

    .line 1302
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz p1, :cond_13

    .line 1303
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveRoomResult(I)V

    goto/16 :goto_3

    .line 1305
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ReceivedListLocation:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_3

    .line 1306
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    if-eqz p1, :cond_13

    .line 1307
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "result"

    .line 1308
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1310
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    .line 1311
    sget p1, Lus/zoom/zrcbox/R$string;->failed_to_get_location:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, p1, p2}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(ZI[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1314
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1315
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->requestRoomParentLocationID()V

    goto/16 :goto_3

    .line 1317
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->requestAllRooms()V

    goto/16 :goto_3

    .line 1321
    :cond_3
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnGetRoomLocationIDResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_8

    .line 1322
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    if-eqz p1, :cond_13

    .line 1323
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1324
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getRoomParentLocationID()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_6

    .line 1325
    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1334
    :cond_4
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomParentLocationID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->findLocationByID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 1335
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-nez p1, :cond_5

    .line 1336
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    .line 1337
    sget p1, Lus/zoom/zrcbox/R$string;->failed_to_determine_location_of_this_room:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, p1, p2}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(ZI[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1339
    :cond_5
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateTitleBarTime()V

    .line 1340
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateTitleBarLocationName()V

    .line 1341
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateLocationsUI()V

    .line 1342
    invoke-direct {p0, p2}, Lus/zoom/zrp/ZRPReserveFragment;->requestLocationInfoByID(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1326
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    .line 1327
    sget p2, Lus/zoom/zrcbox/R$string;->failed_to_determine_location_of_this_room:I

    invoke-virtual {p0, p2}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x1ca8ea3

    if-ne p1, v0, :cond_7

    .line 1329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lus/zoom/zrcbox/R$string;->room_does_not_exist:I

    invoke-virtual {p0, p2}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1331
    :cond_7
    invoke-direct {p0, v2, p2}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 1346
    :cond_8
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnGetLocationInfoResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_c

    .line 1347
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    if-eqz p1, :cond_13

    .line 1348
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "result"

    .line 1349
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "location_info"

    .line 1350
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    const-string v3, "location_id"

    .line 1351
    invoke-virtual {p2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1352
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v3

    invoke-virtual {v3, p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->findLocationByID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p2

    if-eqz p1, :cond_b

    .line 1354
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    if-nez p2, :cond_9

    const-string p2, ""

    goto :goto_1

    .line 1356
    :cond_9
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object p2

    .line 1357
    :goto_1
    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_get_location_information:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {p0, v0, v2}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x1ca8ea2

    if-ne p1, v0, :cond_a

    .line 1359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lus/zoom/zrcbox/R$string;->location_does_not_exist:I

    invoke-virtual {p0, p2}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1361
    :cond_a
    invoke-direct {p0, v1, p2}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 1363
    :cond_b
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    if-eqz p2, :cond_13

    if-eqz v0, :cond_13

    .line 1365
    iput-object p2, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 1366
    iput-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    .line 1367
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsDataBasedOnLocationInfo()V

    .line 1368
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsUI()V

    goto/16 :goto_3

    .line 1372
    :cond_c
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnGetAllRoomsResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_e

    .line 1373
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    if-eqz p1, :cond_13

    .line 1374
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_d

    .line 1376
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    .line 1377
    sget p1, Lus/zoom/zrcbox/R$string;->failed_to_get_list_of_rooms:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, p1, p2}, Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(ZI[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1380
    :cond_d
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    .line 1381
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsDataBasedOnAllRooms()V

    .line 1382
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateReserveOtherRoomsUI()V

    goto/16 :goto_3

    .line 1385
    :cond_e
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnZoomCalendarServiceListEventsResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_f

    .line 1386
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    if-eqz p1, :cond_13

    .line 1387
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "result"

    .line 1388
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1389
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->onListCalendarEventsWithRoomResult(I)V

    goto :goto_3

    .line 1391
    :cond_f
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnZoomCalendarServiceBatchListEventsResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_10

    .line 1392
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    if-eqz p1, :cond_13

    .line 1393
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "result"

    .line 1394
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1395
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->onListCalendarEventsWithRoomResult(I)V

    goto :goto_3

    .line 1397
    :cond_10
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnZoomCalendarServiceScheduleEventResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_13

    .line 1398
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-nez p1, :cond_13

    .line 1399
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "result"

    .line 1400
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "roomID"

    .line 1401
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p1, :cond_12

    .line 1402
    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2

    .line 1406
    :cond_11
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1407
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveOtherRoomSuccess()V

    goto :goto_3

    .line 1403
    :cond_12
    :goto_2
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    .line 1404
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveOtherRoomFailed(I)V

    :cond_13
    :goto_3
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 1282
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 1283
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingList:I

    if-ne p1, p2, :cond_0

    .line 1284
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onUpdateMeetingList()V

    goto :goto_1

    .line 1285
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->forcePrivateMeeting:I

    if-eq p1, p2, :cond_4

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideHostInfoForPrivateMeeting:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 1287
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->reserveOtherRoomInLocation:I

    if-ne p1, p2, :cond_2

    .line 1288
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz p1, :cond_5

    .line 1289
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onReserveOtherRoomInLocationLevelChanged()V

    goto :goto_1

    .line 1291
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-ne p1, p2, :cond_5

    .line 1292
    :cond_3
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz p1, :cond_5

    .line 1293
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initRoomNameViewContent()V

    goto :goto_1

    .line 1286
    :cond_4
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onPrivateMeetingOptionChanged()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onReservableStateChange(Z)V
    .locals 1

    .line 1673
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->btnReserve:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 1676
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveTime:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->no_available_time:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onRoomClick(Lus/zoom/zrp/model/ZRPRoomInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1686
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1687
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->startReturnSelfRoomAnimation()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1691
    iput-boolean v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->blockForOpeningReserveOtherRoom:Z

    .line 1693
    new-instance v0, Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {v0}, Lus/zoom/zrp/ZRPReserveFragment;-><init>()V

    const/4 v1, 0x0

    .line 1694
    invoke-virtual {v0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->setSelfRoom(Z)V

    .line 1695
    invoke-virtual {v0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->setRoomInfo(Lus/zoom/zrp/model/ZRPRoomInfo;)V

    .line 1696
    new-instance v1, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    iget-object v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v2}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getSelectedTimeBlock()Lus/zoom/zrp/reserve/ZRPTimeBlock;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v2

    iget-object v3, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    .line 1697
    invoke-virtual {v3}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getSelectedTimeBlock()Lus/zoom/zrp/reserve/ZRPTimeBlock;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result v3

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;-><init>(III)V

    .line 1698
    invoke-direct {v0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->setDefaultSelectedTimeBlock(Lus/zoom/zrp/reserve/ZRPTimeBlock;)V

    .line 1699
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1494
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_reserve_room_event_time"

    .line 1496
    iget-wide v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomEventTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "state_is_showing_rooms"

    .line 1497
    iget-boolean v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "state_is_self_room"

    .line 1498
    iget-boolean v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "state_room_info"

    .line 1499
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1500
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-eqz v0, :cond_0

    const-string v1, "state_selected_location_tree_id"

    .line 1501
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "state_attendees"

    .line 1504
    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->attendeeEmails:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSelectedTimeBlockChange(Lus/zoom/zrp/reserve/ZRPTimeBlock;)V
    .locals 4

    .line 1658
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0, p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateSelectedTimeBlock(Lus/zoom/zrp/reserve/ZRPTimeBlock;)V

    .line 1659
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->updateReservableRoomsAvailability()V

    .line 1660
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveRoomsView:Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;

    iget-object v1, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->updateTimeBlock(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    .line 1662
    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v0

    invoke-static {v0}, Lus/zoom/zrp/util/ZRPUtils;->todayMins2Millis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->meetingStartMillis:J

    .line 1663
    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v0

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {v0}, Lus/zoom/zrp/util/ZRPUtils;->todayMins2Millis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->meetingEndMillis:J

    .line 1664
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->context:Landroid/content/Context;

    iget-wide v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->meetingStartMillis:J

    iget-wide v2, p0, Lus/zoom/zrp/ZRPReserveFragment;->meetingEndMillis:J

    invoke-static {p1, v0, v1, v2, v3}, Lus/zoom/zrp/util/ZRPUtils;->getReserveTime(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedTimeText:Ljava/lang/String;

    .line 1665
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->tvReserveTime:Landroid/widget/TextView;

    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->selectedTimeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1666
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isShowingRooms:Z

    if-eqz p1, :cond_0

    .line 1667
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateTitleBarTime()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 271
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 273
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onFragmentStart()V

    return-void
.end method

.method onTimer(Ljava/util/Calendar;)V
    .locals 1

    const/16 v0, 0xd

    .line 1415
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 1416
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onCurrentTimeChange()V

    .line 1419
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onTimerForCheckReservingMeetingTimeout()V

    .line 1420
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->onTimerForCheckOperationTimeout()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 234
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 236
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->updateLastOperationTime()V

    .line 238
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initFields()V

    .line 240
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initCalcViewsWidth()V

    .line 242
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment;->initFindViews(Landroid/view/View;)V

    .line 244
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initAddAttendeesViews()V

    .line 246
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initViewsLayout()V

    .line 247
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initRoomNameViewContent()V

    .line 248
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initClickListeners()V

    .line 250
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initEditTextViewsEvents()V

    .line 252
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initSetupControllerView()V

    .line 253
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->reserveControllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onFragmentViewCreated()V

    .line 255
    iget-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    if-nez p1, :cond_0

    .line 256
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initOtherRoomUIState()V

    goto :goto_0

    .line 257
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->canReserveOtherRoom()Z

    move-result p1

    if-nez p1, :cond_1

    .line 258
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initSelfRoomReserveOthersDisabledUIState()V

    goto :goto_0

    .line 260
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initSelfRoomReserveOthersEnabledUIState()V

    .line 262
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initReserveOtherRoomsAnimation()V

    .line 263
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initReturnSelfRoomAnimation()V

    .line 265
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment;->initShowingState()V

    :goto_0
    return-void
.end method

.method public setListener(Lus/zoom/zrp/ZRPReserveFragment$Listener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->listener:Lus/zoom/zrp/ZRPReserveFragment$Listener;

    return-void
.end method

.method public setRoomInfo(Lus/zoom/zrp/model/ZRPRoomInfo;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    return-void
.end method

.method setSelfRoom(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lus/zoom/zrp/ZRPReserveFragment;->isSelfRoom:Z

    return-void
.end method

.method public showWaitingDialog()V
    .locals 3

    .line 285
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPReserveFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->loading:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method
