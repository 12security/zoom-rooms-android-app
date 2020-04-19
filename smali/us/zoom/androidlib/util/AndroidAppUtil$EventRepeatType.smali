.class public final enum Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;
.super Ljava/lang/Enum;
.source "AndroidAppUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/AndroidAppUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventRepeatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

.field public static final enum BIWEEKLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

.field public static final enum DAILY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

.field public static final enum MONTHLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

.field public static final enum NONE:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

.field public static final enum UNKNOWN:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

.field public static final enum WEEKLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

.field public static final enum WORKDAY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

.field public static final enum YEARLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1181
    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->NONE:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    const-string v1, "DAILY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->DAILY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    const-string v1, "WORKDAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->WORKDAY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    const-string v1, "WEEKLY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->WEEKLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    const-string v1, "BIWEEKLY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->BIWEEKLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    const-string v1, "MONTHLY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->MONTHLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    const-string v1, "YEARLY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->YEARLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    const-string v1, "UNKNOWN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->UNKNOWN:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    const/16 v0, 0x8

    .line 1180
    new-array v0, v0, [Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    sget-object v1, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->NONE:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->DAILY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->WORKDAY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->WEEKLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    aput-object v1, v0, v5

    sget-object v1, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->BIWEEKLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    aput-object v1, v0, v6

    sget-object v1, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->MONTHLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    aput-object v1, v0, v7

    sget-object v1, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->YEARLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    aput-object v1, v0, v8

    sget-object v1, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->UNKNOWN:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    aput-object v1, v0, v9

    sput-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->$VALUES:[Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;
    .locals 1

    .line 1180
    const-class v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    return-object p0
.end method

.method public static values()[Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;
    .locals 1

    .line 1180
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->$VALUES:[Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    invoke-virtual {v0}, [Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    return-object v0
.end method
