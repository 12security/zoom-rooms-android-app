.class public final enum Lus/zoom/zrc/base/notification/BasicEvent;
.super Ljava/lang/Enum;
.source "BasicEvent.java"

# interfaces
.implements Lus/zoom/zrc/base/notification/NotificationEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/base/notification/BasicEvent;",
        ">;",
        "Lus/zoom/zrc/base/notification/NotificationEvent;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/base/notification/BasicEvent;

.field public static final enum All:Lus/zoom/zrc/base/notification/BasicEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lus/zoom/zrc/base/notification/BasicEvent;

    const-string v1, "All"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/base/notification/BasicEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/base/notification/BasicEvent;->All:Lus/zoom/zrc/base/notification/BasicEvent;

    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Lus/zoom/zrc/base/notification/BasicEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/BasicEvent;->All:Lus/zoom/zrc/base/notification/BasicEvent;

    aput-object v1, v0, v2

    sput-object v0, Lus/zoom/zrc/base/notification/BasicEvent;->$VALUES:[Lus/zoom/zrc/base/notification/BasicEvent;

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

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/base/notification/BasicEvent;
    .locals 1

    .line 3
    const-class v0, Lus/zoom/zrc/base/notification/BasicEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/base/notification/BasicEvent;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/base/notification/BasicEvent;
    .locals 1

    .line 3
    sget-object v0, Lus/zoom/zrc/base/notification/BasicEvent;->$VALUES:[Lus/zoom/zrc/base/notification/BasicEvent;

    invoke-virtual {v0}, [Lus/zoom/zrc/base/notification/BasicEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/base/notification/BasicEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicEvent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
