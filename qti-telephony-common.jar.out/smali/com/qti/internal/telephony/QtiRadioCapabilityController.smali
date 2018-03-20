.class public Lcom/qti/internal/telephony/QtiRadioCapabilityController;
.super Landroid/os/Handler;
.source "QtiRadioCapabilityController.java"


# static fields
.field static final ALLOW_FLEX_MAPPING_ON_INACTIVE_SUB_PROPERTY:Ljava/lang/String; = "persist.radio.flex_map_inactive"

.field private static final DBG:Z = true

.field private static final EVENT_GET_RADIO_CAPS_DONE:I = 0x3

.field private static final EVENT_RADIO_AVAILABLE:I = 0x1

.field private static final EVENT_RADIO_CAPS_AVAILABLE:I = 0x4

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_UPDATE_BINDING_DONE:I = 0x5

.field private static final FAILURE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "QtiRadioCapabilityController"

.field private static final SUCCESS:I = 0x1

.field private static final VDBG:Z

.field private static final mNumPhones:I

.field private static sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

.field private static sSetNwModeLock:Ljava/lang/Object;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mIsSetPrefNwModeInProgress:Z

.field private mModemRatCapabilitiesAvailable:Z

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

.field private mRadioAccessFamily:[I

.field private mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStoredResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    iput-boolean v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    .line 80
    iput-boolean v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 84
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    .line 85
    iput-object v5, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    .line 89
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    .line 90
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    .line 91
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    .line 93
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    .line 94
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/RadioCapability;

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    .line 136
    new-instance v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;

    invoke-direct {v2, p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;-><init>(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)V

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 118
    iput-object p1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 121
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private areAllModemCapInfoReceived()Z
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 229
    :goto_1
    return v1

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "QtiRadioCapabilityController.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method private getNetworkModeFromDB(I)I
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 457
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v4, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 458
    .local v3, "subId":[I
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    aget v5, v3, v7

    invoke-virtual {v4, v5}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 462
    .local v0, "isSubActive":Z
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    aget v5, v3, v7

    invoke-virtual {v4, v5}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 463
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 466
    .local v1, "networkMode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " get sub based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 477
    :goto_0
    return v1

    .line 469
    .end local v1    # "networkMode":I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 475
    .restart local v1    # "networkMode":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " get slot based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    .end local v1    # "networkMode":I
    :catch_0
    move-exception v2

    .line 472
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 473
    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .restart local v1    # "networkMode":I
    goto :goto_1
.end method

.method private getNumOfRafSupportedForNwMode(II)I
    .locals 4
    .param p1, "nwMode"    # I
    .param p2, "radioAccessFamily"    # I

    .prologue
    .line 546
    const/4 v1, 0x0

    .line 547
    .local v1, "supportedRafMaskForNwMode":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Modem Capabilites are null. Return!!, N/W mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    move v2, v1

    .line 559
    :goto_0
    return v2

    .line 552
    :cond_0
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    .line 554
    .local v0, "nwModeRaf":I
    and-int v1, p2, v0

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumOfRATsSupportedForNwMode: nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nwModeRaf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] raf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supportedRafMaskForNwMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 559
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    goto :goto_0
.end method

.method private handleRadioCapsAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 271
    iput-boolean v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    .line 272
    const-string v0, "handleRadioCapsAvailable... "

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    goto :goto_0
.end method

.method private handleUpdateBindingDone(I)V
    .locals 7
    .param p1, "result"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 239
    if-ne p1, v4, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updateNewNwModeToDB()V

    .line 246
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v5, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v5, :cond_1

    .line 247
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendSubscriptionSettings(I)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_1
    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 254
    if-ne p1, v4, :cond_2

    move v3, v4

    :cond_2
    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    .line 257
    const/4 v1, 0x0

    :goto_1
    sget v3, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v3, :cond_5

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "errorCode":I
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 260
    .local v2, "resp":Landroid/os/Message;
    if-eqz v2, :cond_4

    .line 261
    if-eq p1, v4, :cond_3

    .line 262
    const/4 v0, 0x2

    .line 264
    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 265
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 268
    .end local v0    # "errorCode":I
    .end local v2    # "resp":Landroid/os/Message;
    :cond_5
    return-void
.end method

.method private isAnyCallsInProgress()Z
    .locals 4

    .prologue
    .line 615
    const/4 v1, 0x0

    .line 616
    .local v1, "isCallInProgress":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_1

    .line 618
    const/4 v1, 0x1

    .line 622
    :cond_0
    return v1

    .line 616
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAnyPhoneInEcmState()Z
    .locals 3

    .prologue
    .line 626
    const/4 v1, 0x0

    .line 627
    .local v1, "isInEcmState":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 628
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    const/4 v1, 0x1

    .line 633
    :cond_0
    return v1

    .line 627
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isFlexMappingAllowedOnInactiveSub()Z
    .locals 2

    .prologue
    .line 235
    const-string v0, "persist.radio.flex_map_inactive"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNwModeSupportedOnStack(II)Z
    .locals 6
    .param p1, "nwMode"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 430
    sget v4, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v3, v4, [I

    .line 431
    .local v3, "numRafSupported":[I
    const/4 v2, 0x0

    .line 432
    .local v2, "maxNumRafSupported":I
    const/4 v1, 0x0

    .line 435
    .local v1, "isSupported":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v4, :cond_1

    .line 436
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    aget v4, v4, v0

    invoke-direct {p0, p1, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNumOfRafSupportedForNwMode(II)I

    move-result v4

    aput v4, v3, v0

    .line 437
    aget v4, v3, v0

    if-ge v2, v4, :cond_0

    aget v2, v3, v0

    .line 435
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_1
    aget v4, v3, p2

    if-ne v4, v2, :cond_2

    const/4 v1, 0x1

    .line 443
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nwMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", on stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v4, "Supported"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 446
    return v1

    .line 443
    :cond_3
    const-string v4, "Not Supported"

    goto :goto_1
.end method

.method private isUiccProvisionInProgress()Z
    .locals 4

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "retVal":Z
    invoke-static {}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;

    move-result-object v1

    .line 641
    .local v1, "uiccProvisioner":Lcom/qti/internal/telephony/UiccCardProvisioner;
    if-eqz v1, :cond_0

    .line 642
    invoke-virtual {v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isAnyProvisionRequestInProgress()Z

    move-result v0

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccProvisionInProgress: retVal =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 645
    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 669
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 677
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 673
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 682
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 99
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-direct {v0, p0, p1, p2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    .line 105
    :goto_0
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0

    .line 103
    :cond_0
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "QtiRadioCapabilityController.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyRadioCapsUpdated(Z)V
    .locals 4
    .param p1, "isCrossMapDone"    # Z

    .prologue
    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyRadioCapsUpdated: radio caps updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 596
    if-eqz p1, :cond_0

    .line 597
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 604
    return-void
.end method

.method private onGetRadioCapabilityDone(Landroid/os/AsyncResult;Lcom/android/internal/telephony/RadioCapability;I)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p3, "phoneId"    # I

    .prologue
    .line 204
    if-nez p2, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetRadioCapabilityDone: EXIT!, result null or Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetRadioCapabilityDone on phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] rc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 211
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p3

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Updating in phone phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] rc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 221
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetRadioCapabilityDone: Invalid phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processRadioAvailable(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioAvailable on phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 193
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 197
    .local v0, "getModemCapsMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    .line 201
    .end local v0    # "getModemCapsMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioAvailable: Invalid phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processRadioNotAvailable(Landroid/os/AsyncResult;I)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRadioNotAvailable on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 282
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 287
    :goto_0
    iget-boolean v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    .line 290
    :cond_0
    return-void

    .line 285
    :cond_1
    const-string v0, "Invalid Index!!!"

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 607
    if-eqz p1, :cond_0

    .line 608
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 610
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private sendSubscriptionSettings(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const/4 v9, 0x0

    .line 563
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v6

    .line 566
    .local v6, "type":I
    iget-object v7, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v7, p1

    invoke-interface {v7, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 569
    iget-object v7, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v7, p1

    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    move-object v7, v4

    .line 570
    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 572
    iget-object v7, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 573
    .local v2, "ddsSubId":I
    iget-object v7, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v7, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 574
    .local v1, "ddsPhoneId":I
    if-ne p1, v1, :cond_1

    .line 575
    invoke-static {}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .line 577
    .local v0, "dctCntrl":Lcom/qti/internal/telephony/dataconnection/QtiDctController;
    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 580
    :cond_0
    iget-object v7, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v7, p1

    const/4 v8, 0x1

    invoke-interface {v7, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 583
    .end local v0    # "dctCntrl":Lcom/qti/internal/telephony/dataconnection/QtiDctController;
    :cond_1
    iget-object v7, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v7, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v5

    .line 584
    .local v5, "subId":[I
    iget-object v7, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v3

    .line 585
    .local v3, "isSubActive":Z
    if-eqz v3, :cond_2

    move-object v7, v4

    .line 586
    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v8, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    .line 589
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendSubscriptionSettings: nwMode["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dds subId["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method private setNWModeInProgressFlag(Z)V
    .locals 2
    .param p1, "newStatus"    # Z

    .prologue
    .line 649
    sget-object v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_0
    iput-boolean p1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 651
    monitor-exit v1

    .line 652
    return-void

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private syncCurrentStackInfo()V
    .locals 4

    .prologue
    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 296
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v3

    aput v3, v1, v2

    .line 299
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v1, v1, v0

    :goto_1
    aput v1, v2, v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCurrentStackInfo, current stackId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " raf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 299
    goto :goto_1

    .line 303
    :cond_1
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 3

    .prologue
    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v2

    aput v2, v1, v0

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_0
    return-void
.end method

.method private updateNewNwModeToDB()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 483
    const/4 v1, -0x1

    .line 484
    .local v1, "nwModeFromDB":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v3, :cond_2

    .line 485
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 489
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    if-eq v3, v1, :cond_1

    .line 490
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3, v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 492
    .local v2, "subId":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNewNwModeToDB: subId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new Nw mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old n/w mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 494
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v5, v5, v0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 499
    :cond_0
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    iget-object v5, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v5, v5, v0

    invoke-static {v3, v4, v0, v5}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 484
    .end local v2    # "subId":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 504
    :cond_2
    return-void
.end method

.method private updatePreferredStackIds(Z)V
    .locals 4
    .param p1, "isNwModeRequest"    # Z

    .prologue
    .line 378
    iget-boolean v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v2

    if-nez v2, :cond_2

    .line 379
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: Modem Caps not Available "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 427
    :cond_1
    return-void

    .line 384
    :cond_2
    if-nez p1, :cond_3

    .line 386
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 388
    :cond_3
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->syncCurrentStackInfo()V

    .line 390
    const/4 v0, 0x0

    .local v0, "curPhoneId":I
    :goto_0
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 392
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]supports NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 390
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds:  current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],  NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 404
    const/4 v1, 0x0

    .local v1, "otherPhoneId":I
    :goto_1
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v2, :cond_4

    .line 406
    if-ne v1, v0, :cond_7

    .line 404
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 407
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds:  other stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],  NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 415
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: Cross Binding is possible between phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 421
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    aput v3, v2, v0

    .line 422
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    aput v3, v2, v1

    goto/16 :goto_2
.end method

.method private declared-synchronized updateStackBindingIfRequired(Z)Z
    .locals 11
    .param p1, "isNwModeRequest"    # Z

    .prologue
    .line 313
    monitor-enter p0

    const/4 v4, 0x0

    .line 314
    .local v4, "isUpdateStackBindingRequired":Z
    const/4 v6, 0x0

    .line 315
    .local v6, "response":Z
    :try_start_0
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isAnyCallsInProgress()Z

    move-result v0

    .line 316
    .local v0, "callInProgress":Z
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isAnyPhoneInEcmState()Z

    move-result v3

    .line 317
    .local v3, "isInEcmState":Z
    const-string v8, "persist.radio.flexmap_type"

    const-string v9, "nw_mode"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "flexMapSupportType":Ljava/lang/String;
    const-string v8, "updateStackBindingIfRequired"

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 321
    sget v8, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    const-string v8, "nw_mode"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 322
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No need to update Stack Bindingm prop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ph count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v6

    .line 352
    .end local v6    # "response":Z
    .local v7, "response":I
    :goto_0
    monitor-exit p0

    return v7

    .line 327
    .end local v7    # "response":I
    .restart local v6    # "response":Z
    :cond_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    :try_start_1
    iget-boolean v8, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    if-nez v8, :cond_3

    .line 328
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Call state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ecm state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rat cap available = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    move v7, v6

    .line 330
    .restart local v7    # "response":I
    goto :goto_0

    .line 333
    .end local v7    # "response":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updatePreferredStackIds(Z)V

    .line 334
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget v8, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v8, :cond_4

    .line 335
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " pref stack["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " current stack["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 337
    iget-object v8, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v8, v8, v2

    iget-object v9, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v9, v9, v2

    if-eq v8, v9, :cond_5

    .line 339
    const/4 v4, 0x1

    .line 344
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " updateStackBindingIfRequired, required =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 345
    if-eqz v4, :cond_7

    .line 346
    sget v8, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v5, v8, [Landroid/telephony/RadioAccessFamily;

    .line 347
    .local v5, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v2, 0x0

    :goto_2
    sget v8, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v8, :cond_6

    .line 348
    new-instance v8, Landroid/telephony/RadioAccessFamily;

    iget-object v9, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v10, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v10, v10, v2

    aget v9, v9, v10

    invoke-direct {v8, v2, v9}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v8, v5, v2

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 334
    .end local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    .restart local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .end local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_7
    move v7, v6

    .line 352
    .restart local v7    # "response":I
    goto/16 :goto_0

    .line 313
    .end local v0    # "callInProgress":Z
    .end local v1    # "flexMapSupportType":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "isInEcmState":Z
    .end local v7    # "response":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 157
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 158
    .local v1, "phoneId":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_AVAILABLE, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->processRadioAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 163
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 164
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 165
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_RADIO_CAPS_DONE, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 166
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/RadioCapability;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->onGetRadioCapabilityDone(Landroid/os/AsyncResult;Lcom/android/internal/telephony/RadioCapability;I)V

    goto :goto_0

    .line 170
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_2
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->handleRadioCapsAvailable()V

    goto :goto_0

    .line 174
    :pswitch_3
    const-string v2, " EVENT_UPDATE_BINDING_DONE "

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 175
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->handleUpdateBindingDone(I)V

    goto :goto_0

    .line 179
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 180
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 181
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_NOT_AVAILABLE, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->processRadioNotAvailable(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSetNWModeInProgress()Z
    .locals 3

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 657
    .local v0, "retVal":Z
    sget-object v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 658
    :try_start_0
    iget-boolean v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 659
    monitor-exit v2

    .line 660
    return v0

    .line 659
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aput-object p2, v0, p1

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " radioCapabilityUpdated phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] rc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public declared-synchronized setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isUiccProvisionInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: In Progress, nwmode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 513
    const/4 v2, 0x2

    invoke-direct {p0, p3, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :goto_0
    monitor-exit p0

    return-void

    .line 516
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v2, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 517
    .local v1, "subId":[I
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 519
    .local v0, "isSubActive":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 522
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 523
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 526
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aput p2, v2, p1

    .line 534
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isFlexMappingAllowedOnInactiveSub()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: store msg, nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 511
    .end local v0    # "isSubActive":Z
    .end local v1    # "subId":[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 539
    .restart local v0    # "isSubActive":Z
    .restart local v1    # "subId":[I
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: sending nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 540
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    invoke-interface {v2, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 541
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
