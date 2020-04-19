.class public Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;
.super Ljava/lang/Object;
.source "ZRCParticipantContextMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;
    }
.end annotation


# static fields
.field private static final PRIORITY_ALLOW_RECORDING:I = 0xe

.field private static final PRIORITY_ASSIGN_CC:I = 0x12

.field private static final PRIORITY_ASSIGN_COHOST:I = 0x10

.field private static final PRIORITY_CANCEL_SPOTLIGHT:I = 0x9

.field private static final PRIORITY_FORBID_RECORDING:I = 0xd

.field private static final PRIORITY_GIVEUP_CAMERA_CONTROL:I = 0xc

.field private static final PRIORITY_KEYPAD:I = 0x64

.field private static final PRIORITY_LOWER_HAND:I = 0x1

.field private static final PRIORITY_MAKE_HOST:I = 0xf

.field private static final PRIORITY_MUTE:I = 0x2

.field private static final PRIORITY_OPEN_CAMERA_CONTROL:I = 0xb

.field private static final PRIORITY_PIN:I = 0x6

.field private static final PRIORITY_PUT_IN_WAITING_ROOM:I = 0x14

.field private static final PRIORITY_PUT_ON_HOLD:I = 0x15

.field private static final PRIORITY_RAISE_HAND:I = 0x0

.field private static final PRIORITY_REMOVE:I = 0x3e8

.field private static final PRIORITY_REQUEST_CAMERA_CONTROL:I = 0xa

.field private static final PRIORITY_RETRIEVE_COHOST:I = 0x11

.field private static final PRIORITY_SPOTLIGHT:I = 0x8

.field private static final PRIORITY_START_VIDEO:I = 0x4

.field private static final PRIORITY_STOP_VIDEO:I = 0x5

.field private static final PRIORITY_UNASSIGN_CC:I = 0x13

.field private static final PRIORITY_UNMUTE:I = 0x3

.field private static final PRIORITY_UNPIN:I = 0x7

.field private static locale:Ljava/util/Locale;

.field private static manager:Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->data:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->initDataArray()V

    .line 64
    sget-object p1, Lus/zoom/zrc/ZRCApplication;->sAppLocale:Ljava/util/Locale;

    sput-object p1, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->locale:Ljava/util/Locale;

    return-void
.end method

.method private addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;",
            ">;",
            "Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 105
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized geInstance(Landroid/content/Context;)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;
    .locals 3

    const-class v0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->manager:Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;

    if-eqz v1, :cond_0

    sget-object v1, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    sget-object v1, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->locale:Ljava/util/Locale;

    sget-object v2, Lus/zoom/zrc/ZRCApplication;->sAppLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    new-instance v1, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;

    invoke-direct {v1, p0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->manager:Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;

    .line 100
    :cond_1
    sget-object p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->manager:Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;
    .locals 2

    .line 110
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    invoke-direct {v1}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;-><init>()V

    .line 115
    invoke-virtual {v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;->setMenu(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, p1}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;->setPriority(I)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initDataArray()V
    .locals 3

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    .line 69
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->raise_hand:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->lower_hand:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->mute:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->unmute:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->start_user_video:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->stop_video:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->pin:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->unpin:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->spotlight:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->cancel_spotlight:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->request_camera_control:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->open_camera_control:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->giveup_camera_control:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->forbid_recording:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->allow_recording:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->make_host:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->remove:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->assign_cohost:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->unassign_cohost:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->assign_type_cc:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->unassign_type_cc:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->put_in_waiting_room:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->put_on_hold:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->dataArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->show_keypad:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private isSendingVideoParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isHasSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public hasParticipantContextMenu(Lus/zoom/zrcsdk/model/ZRCParticipant;)Z
    .locals 1

    .line 270
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->data:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->setData(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCParticipant;)Ljava/util/List;

    .line 271
    iget-object p1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->data:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setData(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCParticipant;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 124
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_1

    return-object v0

    .line 128
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsH323Dtmf()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserType()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/16 v2, 0x64

    .line 130
    invoke-direct {p0, v2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 132
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsRaiseHand()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHostOrCoHost()Z

    move-result v2

    if-nez v2, :cond_6

    .line 133
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 134
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isViewOnly()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar()Z

    move-result v2

    if-nez v2, :cond_4

    .line 135
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->isCanRaiseHandForAttendee()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 136
    :cond_4
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCHandStatus;->isRaiseHand()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 137
    invoke-direct {p0, v3}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto :goto_0

    .line 138
    :cond_5
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 139
    invoke-direct {p0, v4}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 143
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportPinAndSpotlight()Z

    move-result v2

    const/4 v5, 0x2

    if-eqz v2, :cond_a

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserType()I

    move-result v2

    if-eq v2, v5, :cond_a

    .line 144
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v2

    .line 145
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/model/AppModel;->getQuantityOfScreens()I

    move-result v6

    const/4 v7, 0x6

    const/4 v8, 0x7

    if-ne v6, v3, :cond_8

    .line 147
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v6

    invoke-virtual {v2, v6}, Lus/zoom/zrc/model/ZRCPinUserManager;->isUserPinned(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 148
    invoke-direct {p0, v8}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto :goto_1

    .line 149
    :cond_7
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v6

    invoke-virtual {v2, v6}, Lus/zoom/zrc/model/ZRCPinUserManager;->isAnyScreenFreeForUser(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, p2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->isSendingVideoParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 150
    invoke-direct {p0, v7}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto :goto_1

    .line 154
    :cond_8
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v6

    invoke-virtual {v2, v6}, Lus/zoom/zrc/model/ZRCPinUserManager;->isAnyScreenFreeForUser(I)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0, p2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->isSendingVideoParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 155
    invoke-direct {p0, v7}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 157
    :cond_9
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v6

    invoke-virtual {v2, v6}, Lus/zoom/zrc/model/ZRCPinUserManager;->isUserPinned(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 158
    invoke-direct {p0, v8}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 163
    :cond_a
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 164
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMyUserId()I

    move-result v2

    .line 165
    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->participantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v6

    .line 167
    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v7

    const/16 v8, 0x9

    if-nez v7, :cond_b

    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result v7

    if-nez v7, :cond_b

    .line 168
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportPinAndSpotlight()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserType()I

    move-result v0

    if-eq v0, v5, :cond_1e

    .line 169
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v0

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->isUserSpotlighted(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 170
    invoke-direct {p0, v8}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto/16 :goto_9

    .line 174
    :cond_b
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportPinAndSpotlight()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserType()I

    move-result v0

    if-eq v0, v5, :cond_d

    .line 175
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v7

    invoke-virtual {v0, v7}, Lus/zoom/zrc/model/Model;->isUserSpotlighted(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 176
    invoke-direct {p0, v8}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto :goto_2

    .line 177
    :cond_c
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result v0

    if-le v0, v5, :cond_d

    invoke-direct {p0, p2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->isSendingVideoParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x8

    .line 178
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 182
    :cond_d
    :goto_2
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v0

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 183
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 184
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_e

    .line 185
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    invoke-virtual {p2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;->getMenu()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_e
    return-object p1

    .line 189
    :cond_f
    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportCoHost()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 190
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    .line 191
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto :goto_4

    :cond_10
    const/16 v0, 0x10

    .line 193
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 196
    :cond_11
    :goto_4
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportClosedCaption()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 197
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->canEditClosedCaption()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    .line 198
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto :goto_5

    :cond_12
    const/16 v0, 0x12

    .line 200
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 203
    :cond_13
    :goto_5
    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHostOrCoHost()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 204
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCHandStatus;->isRaiseHand()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 205
    invoke-direct {p0, v3}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 208
    :cond_14
    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHostOrCoHost()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x3e8

    .line 209
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 212
    :cond_15
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserType()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0xf

    .line 213
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 215
    :cond_16
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isRecordingDisabled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 216
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCanRecord()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0xd

    .line 217
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto :goto_6

    :cond_17
    const/16 v0, 0xe

    .line 219
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 222
    :cond_18
    :goto_6
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 223
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x3

    .line 224
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto :goto_7

    .line 226
    :cond_19
    invoke-direct {p0, v5}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 229
    :cond_1a
    :goto_7
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isHasSource()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 230
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 231
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanMuteByHost()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x5

    .line 232
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto :goto_8

    .line 235
    :cond_1b
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanUnmuteByHost()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    .line 236
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 240
    :cond_1c
    :goto_8
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 241
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSupportSilentMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 242
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWaitingRoom()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x14

    .line 243
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto :goto_9

    .line 244
    :cond_1d
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->canPutOnHold()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x15

    .line 245
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 250
    :cond_1e
    :goto_9
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 251
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->isCanIRequestControl()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->isAmIControlling()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 252
    :cond_1f
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->isAmIControlling()Z

    move-result v0

    if-nez v0, :cond_20

    const/16 v0, 0xa

    .line 253
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    goto :goto_a

    :cond_20
    const/16 v0, 0xb

    .line 255
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 258
    :cond_21
    :goto_a
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->isAmIControlling()Z

    move-result p2

    if-eqz p2, :cond_22

    const/16 p2, 0xc

    .line 259
    invoke-direct {p0, p2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->getMenu(I)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->addMenuToList(Ljava/util/List;Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)V

    .line 262
    :cond_22
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 263
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_23

    .line 264
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    invoke-virtual {p2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;->getMenu()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_23
    return-object p1
.end method
