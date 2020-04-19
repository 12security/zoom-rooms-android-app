.class Lus/zoom/zrc/login/LoginLocationHelper$1;
.super Ljava/lang/Object;
.source "LoginLocationHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginLocationHelper;->sortLocationList(Ljava/util/List;)V
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

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginLocationHelper;Ljava/text/Collator;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLocationHelper$1;->this$0:Lus/zoom/zrc/login/LoginLocationHelper;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginLocationHelper$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 79
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/LoginLocationHelper$1;->compare(Lus/zoom/zrcsdk/model/ZRCLocationTree;Lus/zoom/zrcsdk/model/ZRCLocationTree;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/zrcsdk/model/ZRCLocationTree;Lus/zoom/zrcsdk/model/ZRCLocationTree;)I
    .locals 1

    .line 82
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLocationHelper$1;->val$collator:Ljava/text/Collator;

    .line 83
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
