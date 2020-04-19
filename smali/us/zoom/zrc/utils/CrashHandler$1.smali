.class Lus/zoom/zrc/utils/CrashHandler$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/utils/CrashHandler;->sendCrashLogToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/utils/CrashHandler;


# direct methods
.method constructor <init>(Lus/zoom/zrc/utils/CrashHandler;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lus/zoom/zrc/utils/CrashHandler$1;->this$0:Lus/zoom/zrc/utils/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/utils/CrashHandler$1;->this$0:Lus/zoom/zrc/utils/CrashHandler;

    invoke-static {v0}, Lus/zoom/zrc/utils/CrashHandler;->access$000(Lus/zoom/zrc/utils/CrashHandler;)V

    return-void
.end method
