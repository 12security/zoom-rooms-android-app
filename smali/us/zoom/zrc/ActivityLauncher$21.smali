.class Lus/zoom/zrc/ActivityLauncher$21;
.super Lus/zoom/zrc/base/notification/INotification;
.source "ActivityLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ActivityLauncher;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ActivityLauncher;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lus/zoom/zrc/ActivityLauncher$21;->this$0:Lus/zoom/zrc/ActivityLauncher;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 1

    .line 197
    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    const-string v0, "errorMessage"

    .line 198
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher$21;->this$0:Lus/zoom/zrc/ActivityLauncher;

    invoke-static {v0, p1}, Lus/zoom/zrc/ActivityLauncher;->access$1900(Lus/zoom/zrc/ActivityLauncher;Ljava/lang/String;)V

    return-void
.end method
