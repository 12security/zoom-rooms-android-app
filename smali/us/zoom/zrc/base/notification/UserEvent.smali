.class public final enum Lus/zoom/zrc/base/notification/UserEvent;
.super Ljava/lang/Enum;
.source "UserEvent.java"

# interfaces
.implements Lus/zoom/zrc/base/notification/NotificationEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/base/notification/UserEvent;",
        ">;",
        "Lus/zoom/zrc/base/notification/NotificationEvent;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/base/notification/UserEvent;

.field public static final enum ClickStartRoomSystemMeeting:Lus/zoom/zrc/base/notification/UserEvent;

.field public static final enum DialOutPstnCall:Lus/zoom/zrc/base/notification/UserEvent;

.field public static final enum EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

.field public static final enum InviteByPhoneDone:Lus/zoom/zrc/base/notification/UserEvent;

.field public static final enum ShowPresentation:Lus/zoom/zrc/base/notification/UserEvent;

.field public static final enum StartPresentation:Lus/zoom/zrc/base/notification/UserEvent;

.field public static final enum StopPresentation:Lus/zoom/zrc/base/notification/UserEvent;

.field public static final enum SwitchToNormalMeeting:Lus/zoom/zrc/base/notification/UserEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lus/zoom/zrc/base/notification/UserEvent;

    const-string v1, "ClickStartRoomSystemMeeting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/base/notification/UserEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/base/notification/UserEvent;->ClickStartRoomSystemMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    .line 6
    new-instance v0, Lus/zoom/zrc/base/notification/UserEvent;

    const-string v1, "InviteByPhoneDone"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrc/base/notification/UserEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/base/notification/UserEvent;->InviteByPhoneDone:Lus/zoom/zrc/base/notification/UserEvent;

    .line 8
    new-instance v0, Lus/zoom/zrc/base/notification/UserEvent;

    const-string v1, "DialOutPstnCall"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/zrc/base/notification/UserEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/base/notification/UserEvent;->DialOutPstnCall:Lus/zoom/zrc/base/notification/UserEvent;

    .line 9
    new-instance v0, Lus/zoom/zrc/base/notification/UserEvent;

    const-string v1, "EnterSipCall"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lus/zoom/zrc/base/notification/UserEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    .line 11
    new-instance v0, Lus/zoom/zrc/base/notification/UserEvent;

    const-string v1, "StartPresentation"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lus/zoom/zrc/base/notification/UserEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/base/notification/UserEvent;->StartPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    .line 12
    new-instance v0, Lus/zoom/zrc/base/notification/UserEvent;

    const-string v1, "SwitchToNormalMeeting"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lus/zoom/zrc/base/notification/UserEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/base/notification/UserEvent;->SwitchToNormalMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    .line 15
    new-instance v0, Lus/zoom/zrc/base/notification/UserEvent;

    const-string v1, "ShowPresentation"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lus/zoom/zrc/base/notification/UserEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/base/notification/UserEvent;->ShowPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    .line 16
    new-instance v0, Lus/zoom/zrc/base/notification/UserEvent;

    const-string v1, "StopPresentation"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lus/zoom/zrc/base/notification/UserEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/base/notification/UserEvent;->StopPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Lus/zoom/zrc/base/notification/UserEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->ClickStartRoomSystemMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->InviteByPhoneDone:Lus/zoom/zrc/base/notification/UserEvent;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->DialOutPstnCall:Lus/zoom/zrc/base/notification/UserEvent;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    aput-object v1, v0, v5

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->StartPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    aput-object v1, v0, v6

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->SwitchToNormalMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    aput-object v1, v0, v7

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->ShowPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    aput-object v1, v0, v8

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->StopPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    aput-object v1, v0, v9

    sput-object v0, Lus/zoom/zrc/base/notification/UserEvent;->$VALUES:[Lus/zoom/zrc/base/notification/UserEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/base/notification/UserEvent;
    .locals 1

    .line 3
    const-class v0, Lus/zoom/zrc/base/notification/UserEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/base/notification/UserEvent;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/base/notification/UserEvent;
    .locals 1

    .line 3
    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->$VALUES:[Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {v0}, [Lus/zoom/zrc/base/notification/UserEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/base/notification/UserEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserEvent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
