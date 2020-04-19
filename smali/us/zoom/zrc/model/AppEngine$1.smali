.class Lus/zoom/zrc/model/AppEngine$1;
.super Ljava/lang/Object;
.source "AppEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/model/AppEngine;->rebuildContactImData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/model/AppEngine;

.field final synthetic val$contactAvailableList:Ljava/util/List;

.field final synthetic val$selectedContactList:Ljava/util/List;

.field final synthetic val$selectedContactMap:Ljava/util/Map;

.field final synthetic val$zoomRoomAvailableContactList:Ljava/util/List;

.field final synthetic val$zrcContactIm:Ljava/util/List;


# direct methods
.method constructor <init>(Lus/zoom/zrc/model/AppEngine;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lus/zoom/zrc/model/AppEngine$1;->this$0:Lus/zoom/zrc/model/AppEngine;

    iput-object p2, p0, Lus/zoom/zrc/model/AppEngine$1;->val$zrcContactIm:Ljava/util/List;

    iput-object p3, p0, Lus/zoom/zrc/model/AppEngine$1;->val$zoomRoomAvailableContactList:Ljava/util/List;

    iput-object p4, p0, Lus/zoom/zrc/model/AppEngine$1;->val$contactAvailableList:Ljava/util/List;

    iput-object p5, p0, Lus/zoom/zrc/model/AppEngine$1;->val$selectedContactMap:Ljava/util/Map;

    iput-object p6, p0, Lus/zoom/zrc/model/AppEngine$1;->val$selectedContactList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1118
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine$1;->val$zrcContactIm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1119
    new-instance v0, Lus/zoom/zrc/model/ZRCContactImData;

    invoke-direct {v0}, Lus/zoom/zrc/model/ZRCContactImData;-><init>()V

    const-string v1, "Rooms"

    .line 1120
    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCContactImData;->setKey(Ljava/lang/String;)V

    .line 1121
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lus/zoom/zrc/model/AppEngine$1;->val$zoomRoomAvailableContactList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1122
    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCContactImData;->setData(Ljava/util/List;)V

    .line 1123
    iget-object v1, p0, Lus/zoom/zrc/model/AppEngine$1;->val$zrcContactIm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1126
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 1128
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/model/AppEngine$1;->val$contactAvailableList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1129
    iget-object v2, p0, Lus/zoom/zrc/model/AppEngine$1;->val$contactAvailableList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 1130
    iget-object v3, p0, Lus/zoom/zrc/model/AppEngine$1;->this$0:Lus/zoom/zrc/model/AppEngine;

    iget-object v4, p0, Lus/zoom/zrc/model/AppEngine$1;->val$zrcContactIm:Ljava/util/List;

    invoke-static {v3, v2, v4, v0}, Lus/zoom/zrc/model/AppEngine;->access$000(Lus/zoom/zrc/model/AppEngine;Lus/zoom/zrcsdk/model/ZRCContact;Ljava/util/List;Ljava/text/Collator;)V

    if-eqz v2, :cond_0

    .line 1132
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 1133
    :goto_1
    invoke-static {v3}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lus/zoom/zrc/model/AppEngine$1;->val$selectedContactMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1134
    iget-object v4, p0, Lus/zoom/zrc/model/AppEngine$1;->val$selectedContactMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    iget-object v3, p0, Lus/zoom/zrc/model/AppEngine$1;->val$selectedContactList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1138
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine$1;->val$zrcContactIm:Ljava/util/List;

    new-instance v1, Lus/zoom/zrc/model/AppEngine$1$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/model/AppEngine$1$1;-><init>(Lus/zoom/zrc/model/AppEngine$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1146
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/model/AppEngine$1$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/model/AppEngine$1$2;-><init>(Lus/zoom/zrc/model/AppEngine$1;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
