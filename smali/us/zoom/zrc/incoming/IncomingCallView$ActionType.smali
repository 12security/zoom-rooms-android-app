.class final enum Lus/zoom/zrc/incoming/IncomingCallView$ActionType;
.super Ljava/lang/Enum;
.source "IncomingCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/incoming/IncomingCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/incoming/IncomingCallView$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

.field public static final enum TYPE_ACCEPT:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

.field public static final enum TYPE_ACCEPT_UPGRADE:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

.field public static final enum TYPE_DECLINE:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

.field public static final enum TYPE_DECLINE_UPGRADE:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

.field public static final enum TYPE_END_AND_ACCEPT:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

.field public static final enum TYPE_HOLD_AND_ACCEPT:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 34
    new-instance v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    const-string v1, "TYPE_ACCEPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_ACCEPT:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    new-instance v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    const-string v1, "TYPE_END_AND_ACCEPT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_END_AND_ACCEPT:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    new-instance v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    const-string v1, "TYPE_HOLD_AND_ACCEPT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_HOLD_AND_ACCEPT:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    new-instance v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    const-string v1, "TYPE_ACCEPT_UPGRADE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_ACCEPT_UPGRADE:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    .line 35
    new-instance v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    const-string v1, "TYPE_DECLINE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_DECLINE:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    new-instance v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    const-string v1, "TYPE_DECLINE_UPGRADE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_DECLINE_UPGRADE:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    const/4 v0, 0x6

    .line 33
    new-array v0, v0, [Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    sget-object v1, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_ACCEPT:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_END_AND_ACCEPT:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_HOLD_AND_ACCEPT:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_ACCEPT_UPGRADE:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_DECLINE:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_DECLINE_UPGRADE:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    aput-object v1, v0, v7

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->$VALUES:[Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/incoming/IncomingCallView$ActionType;
    .locals 1

    .line 33
    const-class v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/incoming/IncomingCallView$ActionType;
    .locals 1

    .line 33
    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->$VALUES:[Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    invoke-virtual {v0}, [Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    return-object v0
.end method
