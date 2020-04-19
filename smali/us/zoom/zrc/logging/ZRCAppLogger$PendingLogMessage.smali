.class Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;
.super Ljava/lang/Object;
.source "ZRCAppLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/logging/ZRCAppLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingLogMessage"
.end annotation


# instance fields
.field content:[B

.field severity:I

.field final synthetic this$0:Lus/zoom/zrc/logging/ZRCAppLogger;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/logging/ZRCAppLogger;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/logging/ZRCAppLogger;Lus/zoom/zrc/logging/ZRCAppLogger$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;-><init>(Lus/zoom/zrc/logging/ZRCAppLogger;)V

    return-void
.end method
