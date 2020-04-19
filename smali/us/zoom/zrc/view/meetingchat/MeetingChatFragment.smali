.class public Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "MeetingChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MeetingChatFragment"


# instance fields
.field private closeView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private layoutJumpToLatest:Landroid/view/View;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private meetingChatMessageAdapter:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

.field private meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

.field private messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private settingPopup:Landroid/widget/PopupWindow;

.field private tvEmpty:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 49
    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageAdapter:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    .line 53
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingChatMessageManager()Lus/zoom/zrc/model/MeetingChatMessageManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->settingPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$002(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 39
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->settingPopup:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->doJumpToBottom(Z)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Lus/zoom/zrc/model/MeetingChatMessageManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->isAtBottom()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->layoutJumpToLatest:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageAdapter:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$900(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method private dispatchJumpToBottom(Z)V
    .locals 2

    .line 276
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$9;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$9;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Z)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private doJumpToBottom(Z)V
    .locals 5

    .line 285
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->layoutJumpToLatest:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageAdapter:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 292
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 295
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->dispatchJumpToBottom(Z)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 298
    iget-object v2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    if-eqz p1, :cond_3

    .line 300
    invoke-static {v1}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 305
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->dispatchJumpToBottom(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private initMessagesList()V
    .locals 4

    .line 169
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->onInitUI()Ljava/util/List;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->tvEmpty:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageAdapter:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->update(Ljava/util/List;)V

    .line 174
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->dispatchJumpToBottom(Z)V

    .line 176
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isLoading()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->tvEmpty:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 181
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {v2}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isHistorySynced()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method private isAtBottom()Z
    .locals 2

    .line 272
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method private isAtTop()Z
    .locals 2

    .line 268
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private onPagedMessages(Ljava/util/List;)V
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {v1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isHistorySynced()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {v1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isLoading()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 193
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 194
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {p1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->getCachedMessagesToDisplay()Ljava/util/TreeMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {p1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isLoading()Z

    move-result p1

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->tvEmpty:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setVisibility(I)V

    :cond_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageAdapter:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->tvEmpty:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageAdapter:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->update(Ljava/util/List;)V

    .line 205
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$6;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$6;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 219
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    .line 220
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageAdapter:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    invoke-virtual {v1, v3}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->getItem(I)Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    move-result-object v1

    .line 221
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v0

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v4

    if-ge v0, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 222
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->isAtTop()Z

    move-result v4

    .line 226
    iget-object v5, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageAdapter:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    invoke-virtual {v5}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->getLast()Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    move-result-object v5

    .line 227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    .line 228
    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v5

    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v6

    if-ge v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 229
    :goto_1
    invoke-direct {p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->isAtBottom()Z

    move-result v6

    .line 230
    sget-object v7, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPagedMessages() called with: isAtBottom = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "], isAddLast = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "], isAtTop = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "], isAddFirst = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v7, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageAdapter:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    invoke-virtual {v2, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->update(Ljava/util/List;)V

    if-eqz v5, :cond_6

    if-eqz v6, :cond_5

    .line 237
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$7;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$7;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 249
    :cond_5
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->layoutJumpToLatest:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 252
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$8;

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$8;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 67
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 73
    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->setStyle(II)V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->initDisableWindowStateChangedAccessibilityEvent(Z)V

    .line 75
    invoke-virtual {p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMeetingChatMessageToDisplay:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v2, v0, p1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-virtual {p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    sget p3, Lus/zoom/zrcbox/R$layout;->fragment_chat:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 162
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->settingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 165
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroyView()V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 58
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMeetingChatMessageToDisplay:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_0

    .line 60
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p2}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->onPagedMessages(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 155
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    const/high16 v1, 0x44290000    # 676.0f

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/Util;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    .line 156
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->requestLargeLayout(I)V

    .line 157
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 149
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 150
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->closeView:Landroid/view/View;

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->sendFirstItemAccessibility(Landroid/view/View;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    sget p2, Lus/zoom/zrcbox/R$id;->iv_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->closeView:Landroid/view/View;

    .line 88
    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->closeView:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$1;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget p2, Lus/zoom/zrcbox/R$id;->iv_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 95
    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;

    invoke-direct {v0, p0, p2}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget p2, Lus/zoom/zrcbox/R$id;->tv_empty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->tvEmpty:Landroid/view/View;

    .line 111
    sget p2, Lus/zoom/zrcbox/R$id;->layout_jumptolatest:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->layoutJumpToLatest:Landroid/view/View;

    .line 112
    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->layoutJumpToLatest:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$3;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget p2, Lus/zoom/zrcbox/R$id;->srl_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 119
    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$4;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)V

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 128
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 129
    sget p2, Lus/zoom/zrcbox/R$id;->rv_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 131
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 132
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->meetingChatMessageAdapter:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 133
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$5;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$5;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 144
    invoke-direct {p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->initMessagesList()V

    return-void
.end method
