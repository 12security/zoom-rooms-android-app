.class Lus/zoom/zrc/ActivityLauncher$6;
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

    .line 91
    iput-object p1, p0, Lus/zoom/zrc/ActivityLauncher$6;->this$0:Lus/zoom/zrc/ActivityLauncher;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lus/zoom/zrc/ActivityLauncher$6;->this$0:Lus/zoom/zrc/ActivityLauncher;

    invoke-static {p1}, Lus/zoom/zrc/ActivityLauncher;->access$500(Lus/zoom/zrc/ActivityLauncher;)V

    return-void
.end method
