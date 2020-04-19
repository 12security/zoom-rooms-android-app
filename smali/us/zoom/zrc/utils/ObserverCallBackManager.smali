.class public Lus/zoom/zrc/utils/ObserverCallBackManager;
.super Ljava/lang/Object;
.source "ObserverCallBackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;
    }
.end annotation


# static fields
.field private static manager:Lus/zoom/zrc/utils/ObserverCallBackManager;


# instance fields
.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lus/zoom/zrc/utils/ObserverCallBackManager;

    invoke-direct {v0}, Lus/zoom/zrc/utils/ObserverCallBackManager;-><init>()V

    sput-object v0, Lus/zoom/zrc/utils/ObserverCallBackManager;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/utils/ObserverCallBackManager;->mObservers:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstant()Lus/zoom/zrc/utils/ObserverCallBackManager;
    .locals 1

    .line 13
    sget-object v0, Lus/zoom/zrc/utils/ObserverCallBackManager;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lus/zoom/zrc/utils/ObserverCallBackManager;

    invoke-direct {v0}, Lus/zoom/zrc/utils/ObserverCallBackManager;-><init>()V

    sput-object v0, Lus/zoom/zrc/utils/ObserverCallBackManager;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    .line 16
    :cond_0
    sget-object v0, Lus/zoom/zrc/utils/ObserverCallBackManager;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized notifyStateChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/utils/ObserverCallBackManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->allow_attendees_unmute_themselves:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->disable_attendees_unmute_themselves:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_6

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->lock_meeting:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->unlock_meeting:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    .line 61
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->mute_on_entry:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->unmute_on_entry:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    .line 64
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->hide_self_view:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->show_self_view:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_3

    .line 67
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->claim_host:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    invoke-interface {v1}, Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;->onClickClaimHost()V

    goto/16 :goto_0

    .line 69
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->show_none_video_participant:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->hide_none_video_participant:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 72
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->put_in_waiting_room_on_entry:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->not_put_in_waiting_room_on_entry:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    .line 75
    :cond_7
    sget v2, Lus/zoom/zrcbox/R$string;->lower_all_hands:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v1}, Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;->onClickLowerAllHand()V

    goto/16 :goto_0

    .line 74
    :cond_8
    :goto_1
    invoke-interface {v1}, Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;->onClickWaitingOnEntry()V

    goto/16 :goto_0

    .line 71
    :cond_9
    :goto_2
    invoke-interface {v1}, Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;->onClickShowAudioParticipant()V

    goto/16 :goto_0

    .line 66
    :cond_a
    :goto_3
    invoke-interface {v1}, Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;->onClickSelfView()V

    goto/16 :goto_0

    .line 63
    :cond_b
    :goto_4
    invoke-interface {v1}, Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;->onClickMuteOnEntry()V

    goto/16 :goto_0

    .line 60
    :cond_c
    :goto_5
    invoke-interface {v1}, Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;->onClickLockMeeting()V

    goto/16 :goto_0

    .line 57
    :cond_d
    :goto_6
    invoke-interface {v1}, Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;->onClickAllowAttendeesUnmuteThemselves()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 80
    :cond_e
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized registerObserver(Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 41
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/utils/ObserverCallBackManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lus/zoom/zrc/utils/ObserverCallBackManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unregisterObserver(Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 47
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/utils/ObserverCallBackManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lus/zoom/zrc/utils/ObserverCallBackManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 50
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
