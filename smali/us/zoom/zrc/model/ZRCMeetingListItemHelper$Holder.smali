.class Lus/zoom/zrc/model/ZRCMeetingListItemHelper$Holder;
.super Ljava/lang/Object;
.source "ZRCMeetingListItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/ZRCMeetingListItemHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static instance:Lus/zoom/zrc/model/ZRCMeetingListItemHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;-><init>(Lus/zoom/zrc/model/ZRCMeetingListItemHelper$1;)V

    sput-object v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$Holder;->instance:Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;
    .locals 1

    .line 72
    sget-object v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$Holder;->instance:Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    return-object v0
.end method
