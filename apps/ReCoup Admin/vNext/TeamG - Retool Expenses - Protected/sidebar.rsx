<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  width="large"
>
  <Body>
    <Navigation
      id="navigation1"
      appTargetByIndex=""
      captionByIndex=""
      data=""
      disabledByIndex=""
      hiddenByIndex=""
      highlightByIndex=""
      iconByIndex=""
      iconPositionByIndex=""
      itemMode="static"
      itemTypeByIndex=""
      keyByIndex=""
      labels=""
      orientation="vertical"
      parentKeyByIndex=""
      screenTargetByIndex=""
      screenTargetIdByIndex=""
      src={null}
      srcType={null}
      tooltipByIndex=""
    >
      <Option
        id="34dcf"
        icon="bold/money-atm-card-1"
        iconPosition="left"
        itemType="page"
        label="Wallet"
        screenTargetId="walletPage"
      />
      <Option
        id="fcb06"
        icon="bold/interface-validation-check-square-1-alternate"
        iconPosition="left"
        itemType="page"
        label="Tasks"
        screenTargetId="tasksPage"
      />
      <Option
        id="565e7"
        icon="bold/money-cash-coins-stack"
        iconPosition="left"
        itemType="page"
        label="Spend Limits"
        screenTargetId="spendLimitPage"
      />
      <Option
        id="969b9"
        disabled={false}
        hidden={false}
        icon="bold/money-cashier-receipt-alternate"
        iconPosition="left"
        itemType="page"
        label="Expenses"
        screenTargetId="expensesPage"
      />
      <Event
        event="click"
        method="openPage"
        params={{ map: { pageName: "{{ item.id }}" } }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar2"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ map: { background: "automatic" } }}
    />
  </Footer>
</SidebarFrame>
