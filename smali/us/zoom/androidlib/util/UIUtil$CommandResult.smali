.class public Lus/zoom/androidlib/util/UIUtil$CommandResult;
.super Ljava/lang/Object;
.source "UIUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/UIUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput p1, p0, Lus/zoom/androidlib/util/UIUtil$CommandResult;->result:I

    .line 682
    iput-object p2, p0, Lus/zoom/androidlib/util/UIUtil$CommandResult;->successMsg:Ljava/lang/String;

    .line 683
    iput-object p3, p0, Lus/zoom/androidlib/util/UIUtil$CommandResult;->errorMsg:Ljava/lang/String;

    return-void
.end method
