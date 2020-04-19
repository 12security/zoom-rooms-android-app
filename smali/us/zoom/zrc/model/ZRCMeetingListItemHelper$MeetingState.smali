.class public final enum Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;
.super Ljava/lang/Enum;
.source "ZRCMeetingListItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/ZRCMeetingListItemHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeetingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

.field public static final enum MEETING:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

.field public static final enum OVER:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

.field public static final enum UNKNOWN:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

.field public static final enum UPCOMING:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 638
    new-instance v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    const-string v1, "OVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->OVER:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    .line 639
    new-instance v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    const-string v1, "MEETING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->MEETING:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    .line 640
    new-instance v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    const-string v1, "UPCOMING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->UPCOMING:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    .line 641
    new-instance v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    const-string v1, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->UNKNOWN:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    const/4 v0, 0x4

    .line 637
    new-array v0, v0, [Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    sget-object v1, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->OVER:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->MEETING:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->UPCOMING:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->UNKNOWN:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    aput-object v1, v0, v5

    sput-object v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->$VALUES:[Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 637
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;
    .locals 1

    .line 637
    const-class v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;
    .locals 1

    .line 637
    sget-object v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->$VALUES:[Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    invoke-virtual {v0}, [Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    return-object v0
.end method
