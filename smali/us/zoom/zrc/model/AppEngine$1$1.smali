.class Lus/zoom/zrc/model/AppEngine$1$1;
.super Ljava/lang/Object;
.source "AppEngine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/model/AppEngine$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lus/zoom/zrc/model/ZRCContactImData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/model/AppEngine$1;


# direct methods
.method constructor <init>(Lus/zoom/zrc/model/AppEngine$1;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lus/zoom/zrc/model/AppEngine$1$1;->this$1:Lus/zoom/zrc/model/AppEngine$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1138
    check-cast p1, Lus/zoom/zrc/model/ZRCContactImData;

    check-cast p2, Lus/zoom/zrc/model/ZRCContactImData;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/model/AppEngine$1$1;->compare(Lus/zoom/zrc/model/ZRCContactImData;Lus/zoom/zrc/model/ZRCContactImData;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/zrc/model/ZRCContactImData;Lus/zoom/zrc/model/ZRCContactImData;)I
    .locals 2

    .line 1141
    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCContactImData;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rooms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1142
    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCContactImData;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rooms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1143
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCContactImData;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCContactImData;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
