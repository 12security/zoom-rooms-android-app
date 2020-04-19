.class public Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
.super Ljava/lang/Object;
.source "ZRCMeetingListItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final PROVIDER_BLUEJEANS:I = 0x5

.field public static final PROVIDER_GOOGLE_HANGOUT:I = 0x6

.field public static final PROVIDER_GOTOMEETING:I = 0x3

.field public static final PROVIDER_INVALID:I = -0x1

.field public static final PROVIDER_SKYPE:I = 0x2

.field public static final PROVIDER_TEAMS:I = 0x4

.field public static final PROVIDER_UNKNOWN:I = 0x0

.field public static final PROVIDER_WEBEX:I = 0x1


# instance fields
.field private absentTimesForRecurringMeeting:Ljava/lang/String;

.field private accessRole:Ljava/lang/String;

.field private attendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private calendarChangeKey:Ljava/lang/String;

.field private calendarID:Ljava/lang/String;

.field private checkInStatus:Ljava/lang/String;

.field private creatorEmail:Ljava/lang/String;

.field private creatorName:Ljava/lang/String;

.field private effectiveRights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:Ljava/lang/String;

.field private endTimeDate:Ljava/util/Date;

.field private hostName:Ljava/lang/String;

.field private isInstantMeeting:Z

.field private isPrivate:Z

.field private itemType:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private meetingName:Ljava/lang/String;

.field private meetingNumber:Ljava/lang/String;

.field private meetingPassword:Ljava/lang/String;

.field private recurringEventId:Ljava/lang/String;

.field private scheduledBy:Ljava/lang/String;

.field private scheduledFrom:I

.field private startTime:Ljava/lang/String;

.field private startTimeDate:Ljava/util/Date;

.field private thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 87
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingName:Ljava/lang/String;

    move-object v1, p2

    .line 88
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingNumber:Ljava/lang/String;

    move-object v1, p3

    .line 89
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->hostName:Ljava/lang/String;

    move-object v1, p6

    .line 90
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorEmail:Ljava/lang/String;

    move-object v1, p7

    .line 91
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorName:Ljava/lang/String;

    move v1, p8

    .line 92
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate:Z

    move v1, p9

    .line 93
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isInstantMeeting:Z

    move v1, p10

    .line 94
    iput v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledFrom:I

    move-object v1, p11

    .line 95
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarID:Ljava/lang/String;

    move-object v1, p12

    .line 96
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarChangeKey:Ljava/lang/String;

    move-object v1, p13

    .line 97
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->checkInStatus:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 98
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->accessRole:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 99
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->effectiveRights:Ljava/util/List;

    move-object/from16 v1, p16

    .line 100
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-object/from16 v1, p17

    .line 101
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->location:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 102
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->itemType:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 103
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->recurringEventId:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 104
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->absentTimesForRecurringMeeting:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 105
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->attendees:Ljava/util/List;

    move-object v1, p4

    .line 107
    invoke-virtual {p0, p4}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setStartTime(Ljava/lang/String;)V

    move-object v1, p5

    .line 108
    invoke-virtual {p0, p5}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setEndTime(Ljava/lang/String;)V

    move-object/from16 v1, p22

    .line 110
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingPassword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canEditItem(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 444
    :pswitch_0
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->effectiveRights:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->effectiveRights:Ljava/util/List;

    const-string v2, "Modify"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->effectiveRights:Ljava/util/List;

    const-string v2, "Delete"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1

    .line 438
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->accessRole:Ljava/lang/String;

    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const-string p1, "owner"

    .line 441
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->accessRole:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "writer"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->accessRole:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->compareTo(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
    .locals 5

    .line 455
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTimeDate:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 456
    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTimeDate:Ljava/util/Date;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    :cond_1
    cmp-long p1, v3, v1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    cmp-long p1, v3, v1

    if-gez p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 357
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 358
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 359
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isInstantMeeting:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isInstantMeeting:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledFrom:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledFrom:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingName:Ljava/lang/String;

    .line 362
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingNumber:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingNumber:Ljava/lang/String;

    .line 363
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->hostName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->hostName:Ljava/lang/String;

    .line 364
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTime:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTime:Ljava/lang/String;

    .line 365
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTime:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTime:Ljava/lang/String;

    .line 366
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorEmail:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorEmail:Ljava/lang/String;

    .line 367
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorName:Ljava/lang/String;

    .line 368
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    .line 369
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->location:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->location:Ljava/lang/String;

    .line 370
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarID:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarID:Ljava/lang/String;

    .line 371
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarChangeKey:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarChangeKey:Ljava/lang/String;

    .line 372
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->checkInStatus:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->checkInStatus:Ljava/lang/String;

    .line 373
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->accessRole:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->accessRole:Ljava/lang/String;

    .line 374
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->effectiveRights:Ljava/util/List;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->effectiveRights:Ljava/util/List;

    .line 375
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->itemType:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->itemType:Ljava/lang/String;

    .line 376
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->recurringEventId:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->recurringEventId:Ljava/lang/String;

    .line 377
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->absentTimesForRecurringMeeting:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->absentTimesForRecurringMeeting:Ljava/lang/String;

    .line 378
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingPassword:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingPassword:Ljava/lang/String;

    .line 379
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAbsentTimesForRecurringMeeting()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->absentTimesForRecurringMeeting:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessRole()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->accessRole:Ljava/lang/String;

    return-object v0
.end method

.method public getAttendees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->attendees:Ljava/util/List;

    return-object v0
.end method

.method public getCalendarChangeKey()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarChangeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarID()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarID:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckInStatus()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->checkInStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorEmail()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectiveRights()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->effectiveRights:Ljava/util/List;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .line 395
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTimeDate:Ljava/util/Date;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingCreatorName(ZZ)Ljava/lang/String;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, ""

    return-object p1

    .line 432
    :cond_1
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorName:Ljava/lang/String;

    return-object p1
.end method

.method public getMeetingName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingName:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingNumber()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingNumberForDisplay(ZZ)Ljava/lang/String;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, ""

    return-object p1

    .line 425
    :cond_1
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingNumber:Ljava/lang/String;

    return-object p1
.end method

.method public getMeetingPassword()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurringEventId()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->recurringEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledBy()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledBy:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledFrom()I
    .locals 1

    .line 196
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledFrom:I

    return v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .line 391
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTimeDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;
    .locals 1

    .line 248
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x15

    .line 384
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingNumber:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->hostName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTime:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTime:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorEmail:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorName:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate:Z

    .line 385
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isInstantMeeting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->location:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarID:Ljava/lang/String;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarChangeKey:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->checkInStatus:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->accessRole:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->effectiveRights:Ljava/util/List;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->itemType:Ljava/lang/String;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->recurringEventId:Ljava/lang/String;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->absentTimesForRecurringMeeting:Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingPassword:Ljava/lang/String;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 384
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAllDayMeeting()Z
    .locals 6

    .line 399
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTimeDate:Ljava/util/Date;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTimeDate:Ljava/util/Date;

    if-nez v0, :cond_0

    return v1

    .line 401
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTimeDate:Ljava/util/Date;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTimeDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 402
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    .line 403
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 404
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 405
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    .line 406
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 407
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    const/16 v5, 0x18

    .line 408
    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 409
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 410
    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTimeDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTimeDate:Ljava/util/Date;

    invoke-virtual {v3, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method public isCheckedIn()Z
    .locals 2

    const-string v0, "1"

    .line 224
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->checkInStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInstantMeeting()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isInstantMeeting:Z

    return v0
.end method

.method public isNowInMeetingRange()Z
    .locals 3

    .line 417
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTimeDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTimeDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTimeDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate:Z

    return v0
.end method

.method public isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 345
    :cond_0
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate:Z

    iget-boolean v2, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isInstantMeeting:Z

    iget-boolean v2, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isInstantMeeting:Z

    if-ne v1, v2, :cond_1

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledFrom:I

    iget v2, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledFrom:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingName:Ljava/lang/String;

    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingName:Ljava/lang/String;

    .line 348
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingNumber:Ljava/lang/String;

    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingNumber:Ljava/lang/String;

    .line 349
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTime:Ljava/lang/String;

    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTime:Ljava/lang/String;

    .line 350
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTime:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTime:Ljava/lang/String;

    .line 351
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public setAccessRole(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->accessRole:Ljava/lang/String;

    return-void
.end method

.method public setAttendees(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->attendees:Ljava/util/List;

    return-void
.end method

.method public setCalendarChangeKey(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarChangeKey:Ljava/lang/String;

    return-void
.end method

.method public setCalendarID(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarID:Ljava/lang/String;

    return-void
.end method

.method public setCheckInStatus(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->checkInStatus:Ljava/lang/String;

    return-void
.end method

.method public setCreatorEmail(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorEmail:Ljava/lang/String;

    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorName:Ljava/lang/String;

    return-void
.end method

.method public setEffectiveRights(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->effectiveRights:Ljava/util/List;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 6

    .line 157
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTime:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 160
    :try_start_0
    sget-object v0, Lus/zoom/zrcsdk/model/meetingalert/MAConst;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    const-string v1, "Z$"

    const-string v2, "+00:00"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTimeDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parse end time error: name:%s, time: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->hostName:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->location:Ljava/lang/String;

    return-void
.end method

.method public setMeetingName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingName:Ljava/lang/String;

    return-void
.end method

.method public setMeetingNumber(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingNumber:Ljava/lang/String;

    return-void
.end method

.method public setMeetingPassword(Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingPassword:Ljava/lang/String;

    return-void
.end method

.method public setPrivate(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate:Z

    return-void
.end method

.method public setScheduledBy(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledBy:Ljava/lang/String;

    return-void
.end method

.method public setScheduledFrom(I)V
    .locals 0

    .line 200
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledFrom:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 6

    .line 142
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTime:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 145
    :try_start_0
    sget-object v0, Lus/zoom/zrcsdk/model/meetingalert/MAConst;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    const-string v1, "Z$"

    const-string v2, "+00:00"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTimeDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parse start time error: name:%s, time:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 302
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "meetingName"

    .line 303
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "meetingNumber"

    .line 304
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "hostName"

    .line 305
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 306
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTimeDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    const-string v2, "startTime"

    .line 307
    invoke-static {v1}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    goto :goto_0

    :cond_0
    const-string v1, "startTime(N)"

    .line 309
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 311
    :goto_0
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTimeDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    const-string v2, "endTime"

    .line 312
    invoke-static {v1}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    goto :goto_1

    :cond_1
    const-string v1, "endTime(N)"

    .line 314
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    :goto_1
    const-string v1, "creatorEmail"

    .line 317
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "creatorName"

    .line 318
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->creatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "isPrivate"

    .line 319
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "isInstantMeeting"

    .line 320
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isInstantMeeting:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "scheduledFrom"

    .line 321
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledFrom:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "thirdPartyMeeting"

    .line 322
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "location"

    .line 323
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "calendarID"

    .line 324
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "calendarChangeKey"

    .line 325
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->calendarChangeKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "checkInStatus"

    .line 326
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->checkInStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "accessRole"

    .line 327
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->accessRole:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "effectiveRights"

    .line 328
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->effectiveRights:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "startTimeDate"

    .line 329
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->startTimeDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "endTimeDate"

    .line 330
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->endTimeDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "itemType"

    .line 331
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->itemType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "recurringEventId"

    .line 332
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->recurringEventId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "absentTimesForRecurringMeeting"

    .line 333
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->absentTimesForRecurringMeeting:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "scheduledBy"

    .line 334
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->scheduledBy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "attendees"

    .line 335
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->attendees:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "meetingPassword"

    .line 336
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->meetingPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 337
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
