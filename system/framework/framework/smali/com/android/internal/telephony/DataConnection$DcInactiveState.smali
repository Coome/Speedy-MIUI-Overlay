.class Lcom/android/internal/telephony/DataConnection$DcInactiveState;
.super Lcom/android/internal/util/HierarchicalState;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcInactiveState"
.end annotation


# instance fields
.field private mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

.field private mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

.field private mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 495
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 496
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 497
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 498
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method protected enter()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v1, v0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcInactiveState: enter notifyConnectCompleted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->access$300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcInactiveState: enter notifyDisconnectCompleted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DataConnection;->access$000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V

    .line 529
    :cond_1
    return-void
.end method

.method protected exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 534
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 535
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 536
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 541
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 562
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcInactiveState nothandled msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 563
    const/4 v1, 0x0

    .line 566
    .end local p0
    .local v1, retVal:Z
    :goto_0
    return v1

    .line 544
    .end local v1           #retVal:Z
    .restart local p0
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v3, "DcInactiveState: msg.what=EVENT_RESET, ignore we\'re already reset"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 546
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-static {v2, p0}, Lcom/android/internal/telephony/DataConnection;->access$000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V

    .line 549
    :cond_0
    const/4 v1, 0x1

    .line 550
    .restart local v1       #retVal:Z
    goto :goto_0

    .line 553
    .end local v1           #retVal:Z
    .restart local p0
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v3, "DcInactiveState msg.what=EVENT_CONNECT"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 554
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 555
    .local v0, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v2, v2, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v2, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/DataConnection;->onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V

    .line 557
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/DataConnection;->access$600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    .line 558
    const/4 v1, 0x1

    .line 559
    .restart local v1       #retVal:Z
    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 2
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcInactiveState: setEnterNoticationParams cp,cause"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 502
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 503
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 504
    return-void
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    .locals 2
    .parameter "dp"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcInactiveState: setEnterNoticationParams dp"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 508
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 509
    return-void
.end method
