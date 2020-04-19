.class public Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MeetingChatFragment.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MeetingChatMessageAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_FILE:I = 0x1

.field private static final VIEW_TYPE_NORMAL:I


# instance fields
.field messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 314
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    const/4 p1, 0x1

    .line 318
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method private shouldMergeInternal(I)I
    .locals 8

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 438
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    if-nez v1, :cond_1

    return v0

    .line 442
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isFile()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isShareFileMsg()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 445
    :cond_2
    iget-object v2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    if-nez v2, :cond_3

    return v0

    .line 449
    :cond_3
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isFile()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isShareFileMsg()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 452
    :cond_4
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isSameSender(Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)Z

    move-result v3

    if-nez v3, :cond_5

    return v0

    .line 455
    :cond_5
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getTimeStampInMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getTimeStampInMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x493e0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_6

    return v0

    .line 459
    :cond_6
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->shouldMergeInternal(I)I

    move-result p1

    if-gez p1, :cond_7

    .line 461
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getMessageContentLength()I

    move-result p1

    :cond_7
    const/16 v2, 0x400

    if-lt p1, v2, :cond_8

    return v0

    .line 468
    :cond_8
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getMessageContentLength()I

    move-result v0

    add-int/2addr p1, v0

    return p1

    :cond_9
    :goto_0
    return v0

    :cond_a
    :goto_1
    return v0
.end method


# virtual methods
.method getItem(I)Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;
    .locals 1

    if-ltz p1, :cond_1

    .line 365
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 421
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 381
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    .line 382
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 387
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 391
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isFile()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isShareFileMsg()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method getLast()Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;
    .locals 1

    .line 372
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->getItem(I)Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    move-result-object v0

    return-object v0
.end method

.method getPosition(Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)I
    .locals 1

    .line 376
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 309
    check-cast p1, Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->onBindViewHolder(Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;I)V
    .locals 1
    .param p1    # Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 414
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    .line 415
    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->shouldMerge(I)Z

    move-result p2

    .line 416
    invoke-virtual {p1, v0, p2}, Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;->update(Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 309
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 400
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    .line 407
    sget p2, Lus/zoom/zrcbox/R$layout;->item_meeting_chat:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 408
    new-instance p2, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;

    invoke-direct {p2, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 403
    :cond_0
    sget p2, Lus/zoom/zrcbox/R$layout;->item_meeting_chat_file:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 404
    new-instance p2, Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;

    invoke-direct {p2, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method shouldMerge(I)Z
    .locals 0

    .line 425
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->shouldMergeInternal(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public update(Ljava/util/List;)V
    .locals 6
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

    .line 322
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    .line 324
    invoke-virtual {p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->notifyDataSetChanged()V

    return-void

    .line 327
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 331
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v1

    .line 332
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v2

    .line 333
    iget-object v3, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v3

    .line 334
    iget-object v4, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v4

    .line 335
    iget-object v5, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v3, :cond_2

    .line 337
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 338
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->notifyItemRangeInserted(II)V

    .line 340
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1, v5}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->notifyItemRangeChanged(II)V

    return-void

    :cond_2
    if-le v1, v4, :cond_3

    .line 344
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->notifyItemRangeInserted(II)V

    return-void

    .line 349
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    .line 350
    iget-object v2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 352
    iget-object v3, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 355
    iget-object v3, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 357
    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 361
    :cond_5
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method
