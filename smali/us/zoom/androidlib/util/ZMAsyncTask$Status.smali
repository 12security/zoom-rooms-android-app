.class public final enum Lus/zoom/androidlib/util/ZMAsyncTask$Status;
.super Ljava/lang/Enum;
.source "ZMAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/ZMAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/androidlib/util/ZMAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/androidlib/util/ZMAsyncTask$Status;

.field public static final enum FINISHED:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

.field public static final enum PENDING:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

.field public static final enum RUNNING:Lus/zoom/androidlib/util/ZMAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 79
    new-instance v0, Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/androidlib/util/ZMAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->PENDING:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    .line 83
    new-instance v0, Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/androidlib/util/ZMAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->RUNNING:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    .line 87
    new-instance v0, Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    const-string v1, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/androidlib/util/ZMAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->FINISHED:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    const/4 v0, 0x3

    .line 75
    new-array v0, v0, [Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    sget-object v1, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->PENDING:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->RUNNING:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->FINISHED:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->$VALUES:[Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/androidlib/util/ZMAsyncTask$Status;
    .locals 1

    .line 75
    const-class v0, Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    return-object p0
.end method

.method public static values()[Lus/zoom/androidlib/util/ZMAsyncTask$Status;
    .locals 1

    .line 75
    sget-object v0, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->$VALUES:[Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    invoke-virtual {v0}, [Lus/zoom/androidlib/util/ZMAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    return-object v0
.end method
