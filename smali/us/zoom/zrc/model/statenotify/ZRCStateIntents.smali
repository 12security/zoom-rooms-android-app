.class public Lus/zoom/zrc/model/statenotify/ZRCStateIntents;
.super Ljava/lang/Object;
.source "ZRCStateIntents.java"


# static fields
.field static final ACTION_END_CALL:Ljava/lang/String; = "us.zoom.zrc.action.END_CALL"

.field static final ACTION_INCOMING_CALL_STATE_CHANGED:Ljava/lang/String; = "us.zoom.zrc.action.INCOMING_CALL_STATE_CHANGED"

.field static final ACTION_IN_CALL_STATE_CHANGED:Ljava/lang/String; = "us.zoom.zrc.action.IN_CALL_STATE_CHANGED"

.field static final ACTION_MIC_MUTE_STATE_CHANGED:Ljava/lang/String; = "us.zoom.zrc.action.MIC_MUTE_STATE_CHANGED"

.field static final ACTION_PAIR_STATE_CHANGED:Ljava/lang/String; = "us.zoom.zrc.action.PAIR_STATE_CHANGED"

.field static final ACTION_QUERY_ZOOM_INFO:Ljava/lang/String; = "us.zoom.zrc.action.QUERY_ZOOM_INFO"

.field static final ACTION_ZRP_STATE_CHANGED:Ljava/lang/String; = "us.zoom.zrc.action.SCHEDULING_DISPLAY_STATE_CHANGED"

.field static final EXTRA_IP_ADDRESS:Ljava/lang/String; = "ip_address"

.field static final EXTRA_QUERY_TYPE:Ljava/lang/String; = "query_type"

.field static final EXTRA_STATE:Ljava/lang/String; = "state"

.field static final QUERY_ALL:I = 0x0

.field static final QUERY_INCOMING_CALL_STATE:I = 0x2

.field static final QUERY_IN_CALL_STATE:I = 0x3

.field static final QUERY_MIC_STATE:I = 0x4

.field static final QUERY_PAIR_STATE:I = 0x1

.field static final QUERY_ZRP_STATE:I = 0x5

.field static final STATE_CALL_IDLE:I = 0x0

.field static final STATE_CONNECTING_CALL:I = 0x2

.field static final STATE_HAS_INCOMING_CALL:I = 0x1

.field static final STATE_IN_CALL:I = 0x1

.field static final STATE_NO_INCOMING_CALL:I = 0x0

.field static final STATE_PAIRED:I = 0x1

.field static final STATE_UNPAIRED:I = 0x0

.field public static final ZRP_STATE_AVAILABLE:I = 0x1

.field public static final ZRP_STATE_BUSY:I = 0x2

.field public static final ZRP_STATE_OFFLINE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static inCallState2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "CONNECTING_CALL"

    return-object p0

    :pswitch_1
    const-string p0, "IN_CALL"

    return-object p0

    :pswitch_2
    const-string p0, "CALL_IDLE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static incomingCallState2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "HAS_INCOMING_CALL"

    return-object p0

    :pswitch_1
    const-string p0, "NO_INCOMING_CALL"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static muteState2String(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    const-string p0, "MUTE"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "UNMUTE"

    return-object p0

    :cond_1
    const-string p0, "Unknown"

    return-object p0
.end method

.method static pairState2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "PAIRED"

    return-object p0

    :pswitch_1
    const-string p0, "UNPAIRED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static queryType2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "QUERY_ZRP_STATE"

    return-object p0

    :pswitch_1
    const-string p0, "QUERY_MIC_STATE"

    return-object p0

    :pswitch_2
    const-string p0, "QUERY_IN_CALL_STATE"

    return-object p0

    :pswitch_3
    const-string p0, "QUERY_INCOMING_CALL_STATE"

    return-object p0

    :pswitch_4
    const-string p0, "QUERY_PAIR_STATE"

    return-object p0

    :pswitch_5
    const-string p0, "QUERY_ALL"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zrpState2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "BUSY"

    return-object p0

    :pswitch_1
    const-string p0, "AVAILABLE"

    return-object p0

    :pswitch_2
    const-string p0, "OFFLINE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
