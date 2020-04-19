.class public Lus/zoom/zrc/view/JoinMeetingFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "JoinMeetingFragment.java"

# interfaces
.implements Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;
.implements Landroid/text/TextWatcher;
.implements Lus/zoom/zrc/ZRCActivity$DispatchTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/JoinMeetingFragment$AllLowerCase;,
        Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;
    }
.end annotation


# static fields
.field private static final EVENT_CLOSE_KEYBOARD:I = 0x2

.field private static final EVENT_INIT:I = 0x0

.field private static final EVENT_OPEN_KEYBOARD:I = 0x1

.field private static final EVENT_TEXT_CHANGED:I = 0x3

.field private static final INPUT_FILTERS_MEETING_ID:[Landroid/text/InputFilter;

.field private static final INPUT_FILTERS_VANITY_URL:[Landroid/text/InputFilter;

.field private static final INPUT_TYPE_MEETING_ID:I = 0x2

.field private static final INPUT_TYPE_VANITY_URL:I = 0x80021


# instance fields
.field private inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private ivMeetingHistory:Landroid/widget/ImageView;

.field private ivMeetingHistoryPopupArrow:Landroid/view/View;

.field private keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

.field private meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

.field private meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

.field private numberKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

.field private onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;

.field private rvMeetingHistory:Lus/zoom/zrc/view/FixedRowsRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 65
    new-array v1, v0, [Landroid/text/InputFilter;

    const-string v2, "1234567890-"

    .line 66
    invoke-static {v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xd

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lus/zoom/zrc/view/JoinMeetingFragment$AllLowerCase;

    invoke-direct {v2}, Lus/zoom/zrc/view/JoinMeetingFragment$AllLowerCase;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lus/zoom/zrc/view/JoinMeetingFragment;->INPUT_FILTERS_MEETING_ID:[Landroid/text/InputFilter;

    .line 71
    new-array v0, v0, [Landroid/text/InputFilter;

    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890."

    .line 72
    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    new-instance v1, Lus/zoom/zrc/view/JoinMeetingFragment$AllLowerCase;

    invoke-direct {v1}, Lus/zoom/zrc/view/JoinMeetingFragment$AllLowerCase;-><init>()V

    aput-object v1, v0, v5

    sput-object v0, Lus/zoom/zrc/view/JoinMeetingFragment;->INPUT_FILTERS_VANITY_URL:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    .line 77
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lus/zoom/zrc/view/JoinMeetingFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/JoinMeetingFragment$1;-><init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/JoinMeetingFragment;)Lus/zoom/zrc/view/FixedRowsRecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->rvMeetingHistory:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/JoinMeetingFragment;)Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lus/zoom/zrc/view/JoinMeetingFragment;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->executeJoinMeeting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lus/zoom/zrc/view/JoinMeetingFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrc/view/JoinMeetingFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->clearMeetingHistory()V

    return-void
.end method

.method static synthetic access$1300(Lus/zoom/zrc/view/JoinMeetingFragment;Landroid/text/Editable;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->handleTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/JoinMeetingFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->onOpenKeyboard()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/JoinMeetingFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->onCloseKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/JoinMeetingFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->showMeetingHistory()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/JoinMeetingFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->updateMeetingHistoriesByDataChanged()V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/JoinMeetingFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->updateMeetingHistoryPopupWindowVisibility()V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/JoinMeetingFragment;Lus/zoom/zrcsdk/model/MeetingHistory;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->updateMeetingHistoriesByItemRemoved(Lus/zoom/zrcsdk/model/MeetingHistory;)V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/view/JoinMeetingFragment;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->onImeActionGo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lus/zoom/zrc/view/JoinMeetingFragment;)Lus/zoom/zrc/base/widget/ZRCEditText;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    return-object p0
.end method

.method private activeManagerJoiningMeetingProcess(Ljava/lang/String;)V
    .locals 2

    .line 489
    invoke-static {}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->getInstance()Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->setJoiningMeeting(Z)V

    .line 490
    invoke-static {}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->getInstance()Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->setJoiningMeetingHistoryID(Ljava/lang/String;)V

    return-void
.end method

.method private checkKeyboardEnabled()V
    .locals 6

    .line 494
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->numberKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setDeleteKeyEnabled(Z)V

    .line 497
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->isMeetingId(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "-"

    const-string v2, ""

    .line 498
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->numberKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x9

    if-lt v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setDoneKeyEnabled(Z)V

    .line 500
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->numberKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setNumberKeyEnabled(Z)V

    goto :goto_5

    .line 502
    :cond_3
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->numberKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setDoneKeyEnabled(Z)V

    .line 503
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->numberKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x28

    if-ge v0, v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v1, v3}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setNumberKeyEnabled(Z)V

    :goto_5
    return-void
.end method

.method private clearMeetingHistory()V
    .locals 1

    .line 311
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->clearMeetingHistory()V

    return-void
.end method

.method private executeJoinMeeting(Ljava/lang/String;)V
    .locals 1

    .line 474
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->joinMeeting(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 476
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->activeManagerJoiningMeetingProcess(Ljava/lang/String;)V

    .line 478
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;

    if-eqz p1, :cond_1

    .line 479
    invoke-interface {p1, v0}, Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;->OnClickJoinMeetingBtn(I)V

    :cond_1
    return-void
.end method

.method private handleTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->invalidateInputFilters(Ljava/lang/CharSequence;)V

    .line 399
    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->isMeetingId(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-"

    .line 400
    invoke-static {v0, v1}, Lus/zoom/zrc/utils/Util;->formatDisplayMeetingNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 403
    invoke-interface {p1, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_0
    const-string v1, "."

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 412
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setSelection(I)V

    .line 413
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->checkKeyboardEnabled()V

    const/4 p1, 0x3

    .line 414
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->invalidateInputType(I)V

    return-void
.end method

.method private initMeetingHistoryPopupUI()V
    .locals 7

    .line 237
    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->dial_history_popup_layout_recycler:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 239
    sget v1, Lus/zoom/zrcbox/R$id;->iv_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->ivMeetingHistoryPopupArrow:Landroid/view/View;

    .line 240
    sget v1, Lus/zoom/zrcbox/R$id;->recycler_call_history:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/FixedRowsRecyclerView;

    iput-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->rvMeetingHistory:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    .line 241
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 242
    iget-object v2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->rvMeetingHistory:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    invoke-virtual {v2, v1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 243
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->rvMeetingHistory:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    new-instance v2, Lus/zoom/zrc/view/RecyclerViewDivider;

    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$drawable;->divider_call_history:I

    invoke-direct {v2, v5, v3, v6}, Lus/zoom/zrc/view/RecyclerViewDivider;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 245
    new-instance v1, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    .line 246
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedMeetingHistoryList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->setMeetingHistories(Ljava/util/List;)V

    .line 247
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->rvMeetingHistory:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    iget-object v2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 249
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    new-instance v2, Lus/zoom/zrc/view/JoinMeetingFragment$8;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/JoinMeetingFragment$8;-><init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->setOnItemClickListener(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$OnItemClickListener;)V

    .line 259
    sget v1, Lus/zoom/zrcbox/R$id;->btn_clear:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 260
    new-instance v2, Lus/zoom/zrc/view/JoinMeetingFragment$9;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/JoinMeetingFragment$9;-><init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->rvMeetingHistory:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 269
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    .line 270
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 271
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 272
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 273
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrc_dial_history_popup_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 274
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 275
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private invalidateInputFilters(Ljava/lang/CharSequence;)V
    .locals 1

    .line 508
    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->isMeetingId(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lus/zoom/zrc/view/JoinMeetingFragment;->INPUT_FILTERS_MEETING_ID:[Landroid/text/InputFilter;

    goto :goto_0

    :cond_0
    sget-object p1, Lus/zoom/zrc/view/JoinMeetingFragment;->INPUT_FILTERS_VANITY_URL:[Landroid/text/InputFilter;

    .line 509
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 510
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    return-void
.end method

.method private invalidateInputType(I)V
    .locals 4

    .line 515
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getInputType()I

    move-result v0

    .line 516
    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x80021

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 528
    :pswitch_0
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->isKeyboardOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    const v0, 0x80021

    goto :goto_2

    .line 533
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->isMeetingId(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x80021

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 525
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->isMeetingId(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x80021

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 522
    :pswitch_2
    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->isMeetingId(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    const v0, 0x80021

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x0

    .line 538
    :cond_6
    :goto_2
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->getInputType()I

    move-result p1

    if-eq v0, p1, :cond_7

    .line 539
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setInputType(I)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private joinMeeting(Ljava/lang/String;)I
    .locals 2

    .line 484
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 485
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->joinMeeting(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private onCloseKeyboard()V
    .locals 2

    .line 452
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->isKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->closeSoftKeyboard(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x2

    .line 455
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->invalidateInputType(I)V

    .line 456
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->numberKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setVisibility(I)V

    return-void
.end method

.method private onImeActionGo()Z
    .locals 4

    .line 430
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->isMeetingId(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 432
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 437
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->onJoinClicked()V

    :cond_3
    return v2
.end method

.method private onJoinClicked()V
    .locals 3

    .line 466
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->isMeetingId(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-"

    const-string v2, ""

    .line 468
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 470
    :cond_0
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->executeJoinMeeting(Ljava/lang/String;)V

    return-void
.end method

.method private onOpenKeyboard()V
    .locals 2

    const/4 v0, 0x1

    .line 443
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->invalidateInputType(I)V

    .line 444
    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->requestFocus()Z

    .line 447
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->openSoftKeyboard(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->numberKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setVisibility(I)V

    return-void
.end method

.method private showMeetingHistory()V
    .locals 2

    .line 305
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->notifyDataSetChanged()V

    .line 306
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->ivMeetingHistory:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtBottom(Landroid/widget/PopupWindow;Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->ivMeetingHistory:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->ivMeetingHistoryPopupArrow:Landroid/view/View;

    invoke-static {v0, v1}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->updateArrowToCenterHorizontal(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private updateMeetingHistoriesByDataChanged()V
    .locals 2

    .line 288
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedMeetingHistoryList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->setMeetingHistories(Ljava/util/List;)V

    .line 289
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateMeetingHistoriesByItemRemoved(Lus/zoom/zrcsdk/model/MeetingHistory;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->getMeetingHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 294
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedMeetingHistoryList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->setMeetingHistories(Ljava/util/List;)V

    .line 295
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryAdapter:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method private updateMeetingHistoryPopupWindowVisibility()V
    .locals 1

    .line 299
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedMeetingHistoryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 376
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->handleTextChanged(Landroid/text/Editable;)V

    .line 377
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public cleanInputMeetingId()V
    .locals 2

    .line 460
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 461
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 138
    sget p3, Lus/zoom/zrcbox/R$layout;->join_meeting:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 337
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onDestroy()V

    .line 338
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setOnMeetingHistoryChangeListener(Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;)V

    return-void
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->isKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-static {p1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->isTappedUnderView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 385
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    new-instance v0, Lus/zoom/zrc/view/JoinMeetingFragment$11;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/JoinMeetingFragment$11;-><init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 356
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    .line 358
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->onCloseKeyboard()V

    .line 359
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onKeyBoardClicked(ILjava/lang/String;)V
    .locals 2

    const/16 p2, 0x42

    if-ne p2, p1, :cond_0

    .line 421
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->onJoinClicked()V

    goto :goto_0

    .line 423
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 349
    invoke-static {p0, p0}, Lus/zoom/zrc/ZRCActivity;->removeDispatchTouchListener(Landroidx/fragment/app/Fragment;Lus/zoom/zrc/ZRCActivity$DispatchTouchListener;)V

    .line 350
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onPause()V

    .line 351
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->onCloseKeyboard()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 343
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onResume()V

    .line 344
    invoke-static {p0, p0}, Lus/zoom/zrc/ZRCActivity;->addDispatchTouchListener(Landroidx/fragment/app/Fragment;Lus/zoom/zrc/ZRCActivity$DispatchTouchListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 316
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStart()V

    .line 317
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 318
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->requestFocus()Z

    .line 319
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    new-instance v1, Lus/zoom/zrc/view/JoinMeetingFragment$10;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/JoinMeetingFragment$10;-><init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 329
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 330
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStop()V

    .line 331
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 332
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->meetingHistoryPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 143
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 144
    sget p2, Lus/zoom/zrcbox/R$id;->join_input:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCEditText;

    iput-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    .line 145
    iget-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p2}, Lus/zoom/zrc/base/widget/ZRCEditText;->setDisableSelectionAndPaste()V

    .line 147
    sget p2, Lus/zoom/zrcbox/R$id;->number_key_board:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    iput-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->numberKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    .line 148
    iget-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->numberKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-virtual {p2, p0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setKeyBoardListener(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;)V

    .line 149
    iget-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->numberKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    sget v0, Lus/zoom/zrcbox/R$string;->join_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setDoneLabel(Ljava/lang/CharSequence;)V

    .line 151
    sget p2, Lus/zoom/zrcbox/R$id;->show_keyboard_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 152
    sget v0, Lus/zoom/zrcbox/R$id;->show_keyboard_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 153
    invoke-static {v0, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->matchImageViewToTextSize(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 154
    new-instance v1, Lus/zoom/zrc/view/JoinMeetingFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/JoinMeetingFragment$2;-><init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    new-instance p2, Lus/zoom/zrc/view/JoinMeetingFragment$3;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/JoinMeetingFragment$3;-><init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    sget p2, Lus/zoom/zrcbox/R$id;->keyboard_detector:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    iput-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    .line 169
    iget-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->keyboardDetector:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    new-instance v0, Lus/zoom/zrc/view/JoinMeetingFragment$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/JoinMeetingFragment$4;-><init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->setKeyboardListener(Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;)V

    .line 181
    iget-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p2}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-direct {p0, p2}, Lus/zoom/zrc/view/JoinMeetingFragment;->invalidateInputFilters(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 182
    invoke-direct {p0, p2}, Lus/zoom/zrc/view/JoinMeetingFragment;->invalidateInputType(I)V

    .line 184
    invoke-direct {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->initMeetingHistoryPopupUI()V

    .line 186
    sget p2, Lus/zoom/zrcbox/R$id;->iv_meeting_history:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->ivMeetingHistory:Landroid/widget/ImageView;

    .line 187
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->ivMeetingHistory:Landroid/widget/ImageView;

    new-instance p2, Lus/zoom/zrc/view/JoinMeetingFragment$5;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/JoinMeetingFragment$5;-><init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->updateMeetingHistoryOperatorVisibility()V

    .line 196
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p1

    new-instance p2, Lus/zoom/zrc/view/JoinMeetingFragment$6;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/JoinMeetingFragment$6;-><init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/ZRCSdkContext;->setOnMeetingHistoryChangeListener(Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;)V

    .line 228
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->inputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    new-instance p2, Lus/zoom/zrc/view/JoinMeetingFragment$7;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/JoinMeetingFragment$7;-><init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/widget/ZRCEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setOnClickJoinMeetingBtnListener(Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;

    return-void
.end method

.method public updateMeetingHistoryOperatorVisibility()V
    .locals 2

    .line 279
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedMeetingHistoryList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedMeetingHistoryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->ivMeetingHistory:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 281
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment;->ivMeetingHistory:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method
