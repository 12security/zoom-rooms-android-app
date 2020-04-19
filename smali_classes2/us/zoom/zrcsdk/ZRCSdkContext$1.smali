.class Lus/zoom/zrcsdk/ZRCSdkContext$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "ZRCSdkContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/ZRCSdkContext;->loadDialHistoryList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lus/zoom/zrcsdk/model/DialHistory;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/ZRCSdkContext;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/ZRCSdkContext;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext$1;->this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
