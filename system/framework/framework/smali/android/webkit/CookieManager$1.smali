.class Landroid/webkit/CookieManager$1;
.super Ljava/lang/Object;
.source "CookieManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CookieManager;->removeSessionCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CookieManager;


# direct methods
.method constructor <init>(Landroid/webkit/CookieManager;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Landroid/webkit/CookieManager$1;->this$0:Landroid/webkit/CookieManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 503
    iget-object v5, p0, Landroid/webkit/CookieManager$1;->this$0:Landroid/webkit/CookieManager;

    monitor-enter v5

    .line 504
    :try_start_0
    iget-object v6, p0, Landroid/webkit/CookieManager$1;->this$0:Landroid/webkit/CookieManager;

    invoke-static {v6}, Landroid/webkit/CookieManager;->access$100(Landroid/webkit/CookieManager;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 505
    .local v1, cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 506
    .local v4, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 507
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 508
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 509
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 510
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/CookieManager$Cookie;

    .line 511
    .local v0, cookie:Landroid/webkit/CookieManager$Cookie;
    iget-wide v6, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 512
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 517
    .end local v0           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v1           #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v4           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 516
    .restart local v1       #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .restart local v4       #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/CookieSyncManager;->clearSessionCookies()V

    .line 517
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    return-void
.end method
