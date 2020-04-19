.class Lus/zoom/zrc/PTActivity$19;
.super Ljava/lang/Object;
.source "PTActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/PTActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/PTActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/PTActivity;)V
    .locals 0

    .line 1722
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$19;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1725
    iget-object v0, p0, Lus/zoom/zrc/PTActivity$19;->this$0:Lus/zoom/zrc/PTActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lus/zoom/zrc/PTActivity;->access$1400(Lus/zoom/zrc/PTActivity;ZZ)V

    return-void
.end method
