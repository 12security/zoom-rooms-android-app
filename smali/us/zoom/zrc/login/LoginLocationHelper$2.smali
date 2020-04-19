.class Lus/zoom/zrc/login/LoginLocationHelper$2;
.super Ljava/lang/Object;
.source "LoginLocationHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginLocationHelper;->getFirstDisplayItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginLocationHelper;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginLocationHelper;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLocationHelper$2;->this$0:Lus/zoom/zrc/login/LoginLocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 121
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/LoginLocationHelper$2;->compare(Lus/zoom/zrcsdk/model/ZRCLocationTree;Lus/zoom/zrcsdk/model/ZRCLocationTree;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/zrcsdk/model/ZRCLocationTree;Lus/zoom/zrcsdk/model/ZRCLocationTree;)I
    .locals 0

    .line 124
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result p2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
