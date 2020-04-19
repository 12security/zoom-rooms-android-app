.class Lus/zoom/zrc/ZRCActivity$ReportItemInfo;
.super Ljava/lang/Object;
.source "ZRCActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ZRCActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReportItemInfo"
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field final synthetic this$0:Lus/zoom/zrc/ZRCActivity;

.field public zipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lus/zoom/zrc/ZRCActivity$ReportItemInfo;->this$0:Lus/zoom/zrc/ZRCActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
