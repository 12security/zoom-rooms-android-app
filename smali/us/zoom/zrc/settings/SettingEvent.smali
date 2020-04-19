.class public final enum Lus/zoom/zrc/settings/SettingEvent;
.super Ljava/lang/Enum;
.source "SettingEvent.java"

# interfaces
.implements Lus/zoom/zrc/base/notification/NotificationEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/settings/SettingEvent;",
        ">;",
        "Lus/zoom/zrc/base/notification/NotificationEvent;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/settings/SettingEvent;

.field public static final enum OP_BACK:Lus/zoom/zrc/settings/SettingEvent;

.field public static final enum OP_LEFT_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

.field public static final enum OP_RIGHT_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

.field public static final enum OP_SUB_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

.field public static final enum OP_SUB_CONTENT_BACK:Lus/zoom/zrc/settings/SettingEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lus/zoom/zrc/settings/SettingEvent;

    const-string v1, "OP_LEFT_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/settings/SettingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/settings/SettingEvent;->OP_LEFT_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    .line 8
    new-instance v0, Lus/zoom/zrc/settings/SettingEvent;

    const-string v1, "OP_RIGHT_CONTENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrc/settings/SettingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/settings/SettingEvent;->OP_RIGHT_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    .line 9
    new-instance v0, Lus/zoom/zrc/settings/SettingEvent;

    const-string v1, "OP_SUB_CONTENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/zrc/settings/SettingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/settings/SettingEvent;->OP_SUB_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    .line 10
    new-instance v0, Lus/zoom/zrc/settings/SettingEvent;

    const-string v1, "OP_BACK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lus/zoom/zrc/settings/SettingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/settings/SettingEvent;->OP_BACK:Lus/zoom/zrc/settings/SettingEvent;

    .line 11
    new-instance v0, Lus/zoom/zrc/settings/SettingEvent;

    const-string v1, "OP_SUB_CONTENT_BACK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lus/zoom/zrc/settings/SettingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/settings/SettingEvent;->OP_SUB_CONTENT_BACK:Lus/zoom/zrc/settings/SettingEvent;

    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [Lus/zoom/zrc/settings/SettingEvent;

    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_LEFT_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_RIGHT_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_SUB_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_BACK:Lus/zoom/zrc/settings/SettingEvent;

    aput-object v1, v0, v5

    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_SUB_CONTENT_BACK:Lus/zoom/zrc/settings/SettingEvent;

    aput-object v1, v0, v6

    sput-object v0, Lus/zoom/zrc/settings/SettingEvent;->$VALUES:[Lus/zoom/zrc/settings/SettingEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/settings/SettingEvent;
    .locals 1

    .line 5
    const-class v0, Lus/zoom/zrc/settings/SettingEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/settings/SettingEvent;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/settings/SettingEvent;
    .locals 1

    .line 5
    sget-object v0, Lus/zoom/zrc/settings/SettingEvent;->$VALUES:[Lus/zoom/zrc/settings/SettingEvent;

    invoke-virtual {v0}, [Lus/zoom/zrc/settings/SettingEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/settings/SettingEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingEvent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
